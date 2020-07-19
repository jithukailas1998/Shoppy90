import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class  StationDetails extends StatefulWidget {
  @override
  _StationDetailsState createState() => _StationDetailsState();
}

class _StationDetailsState extends State<StationDetails> {
  var pro_list=[
    {
      "name" : "Pen",
      "pic":"images/28.jpg",
      "price":30,
      "old_price":35,
    },
    {
      "name" : "Bottle",
      "pic":"images/29.jpg",
      "price":130,
      "old_price":235,
    },
    {
      "name" : "Paper",
      "pic":"images/30.png",
      "price":50,
      "old_price":65,
    },
    {
      "name" : "Knife",
      "pic":"images/knife.jpg",
      "price":30,
      "old_price":35,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pro_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Clean_prod(
            prod_name: pro_list[index]["name"],
            prod_pic: pro_list[index]["pic"],
            prod_price: pro_list[index]["price"],
            prod_old: pro_list[index]["old_price"],
          );
        });
  }
}

class Clean_prod extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_price;
  final prod_old;
  Clean_prod({
    this.prod_name,
    this.prod_pic,
    this.prod_price,
    this.prod_old
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: (){},
            child: GridTile(
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                  leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.w800),),
                  title: Text("\R\s$prod_price",style: TextStyle(fontWeight: FontWeight.w600),),
                  subtitle: Text("\R\s$prod_old",style: TextStyle(fontWeight: FontWeight.w300,decoration: TextDecoration.lineThrough),),
                ),
              ),
              child: Image.asset(prod_pic,fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}

