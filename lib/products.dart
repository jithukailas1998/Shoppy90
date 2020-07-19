import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var pro_list=[
    {
      "name" : "Turmeric",
      "pic":"images/turm.jpg",
      "price":30,
      "old_price":35,
    },
    {
      "name" : "Baby Care",
      "pic":"images/lotion.jpg",
      "price":130,
      "old_price":235,
    },
    {
      "name" : "fair & Lovely",
      "pic":"images/Fair.jpg",
      "price":50,
      "old_price":65,
    },
    {
      "name" : "Pril",
      "pic":"images/pril.jpg",
      "price":30,
      "old_price":35,
    },
    {
      "name" : "Rice",
      "pic":"images/grocery.jpg",
      "price":400,
      "old_price":500,
    },
    {
      "name" : "Kurkure",
      "pic":"images/kurkure.jpg",
      "price":30,
      "old_price":35,
    },
    {
      "name" : "Frooti",
      "pic":"images/frooti.png",
      "price":30,
      "old_price":35,
    },
    {
      "name" : "Cashew",
      "pic":"images/cashew.jpg",
      "price":319,
      "old_price":426,
    },
    {
      "name" : "Tomato",
      "pic":"images/tomoto.jpg",
      "price":20,
      "old_price":35,
    },
    {
      "name" : "Dog Food",
      "pic":"images/dog.jpg",
      "price":130,
      "old_price":155,
    },
    {
      "name" : "Knife",
      "pic":"images/knife.jpg",
      "price":40,
      "old_price":65,
    },
    {
      "name" : "Cooker",
      "pic":"images/cook.jpg",
      "price":1100,
      "old_price":1335,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pro_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Single_prod(
            prod_name: pro_list[index]["name"],
            prod_pic: pro_list[index]["pic"],
            prod_price: pro_list[index]["price"],
            prod_old: pro_list[index]["old_price"],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_price;
  final prod_old;
  Single_prod({
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

