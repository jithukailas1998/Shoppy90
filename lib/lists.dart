import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  var pro_list=[
    {
      "name" : "Turmeric",
      "pic":"images/pulses.jpeg",
    },
    {
      "name" : "Baby Care",
      "pic":"images/baby.jpg",
    },
    {
      "name" : "fair & Lovely",
      "pic":"images/beauty.jpg",
    },
    {
      "name" : "Pril",
      "pic":"images/clean.jpg",
    },
    {
      "name" : "Rice",
      "pic":"images/grocery.jpg",
    },
    {
      "name" : "Kurkure",
      "pic":"images/snacks.jpg",
    },
    {
      "name" : "Frooti",
      "pic":"images/beverage.jpg",
    },
    {
      "name": "Cashew",
      "pic": "images/nuts.jpg",
    },
    {
      "name" : "Tomato",
      "pic":"images/rawveg.jpg",
    },
    {
      "name" : "Dog Food",
      "pic":"images/pets.jpg",
    },
    {
      "name" : "Knife",
      "pic":"images/station.jpg",
    },
    {
      "name" : "Cooker",
      "pic":"images/kitchen.jpeg",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pro_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context,int index){
          return Single_prod(
            prod_name: pro_list[index]["name"],
            prod_pic: pro_list[index]["pic"],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pic;
  Single_prod({
    this.prod_name,
    this.prod_pic,
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
                height: 45,
                color: Colors.white38,
                child: ListTile(
                  title: Text("$prod_name",textAlign: TextAlign.center,style: TextStyle(fontSize:11,fontWeight: FontWeight.w700),),
                ),
              ),
              child: Image.asset(prod_pic,width: 10,height: 15,),
            ),
          ),
        ),
      ),
    );
  }
}

