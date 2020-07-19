import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppy90/pulses.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_loc: "images/pulses.jpeg",
            image_cap: "Pulses",
          ),
          Category(
            image_loc: "images/baby.jpg",
            image_cap: "Mom & Baby care",
          ),
          Category(
            image_loc: "images/beauty.jpg",
            image_cap: "Beauty & Hygiene",
          ),
          Category(
            image_loc: "images/clean.jpg",
            image_cap: "Cleaning",
          ),
          Category(
            image_loc: "images/grocery.jpg",
            image_cap: "Grocery",
          ),
          Category(
            image_loc: "images/snacks.jpg",
            image_cap: "Snacks",
          )
          ,Category(
            image_loc: "images/beverage.jpg",
            image_cap: "Beverages",
          ),
          Category(
            image_loc: "images/nuts.jpg",
            image_cap: "Nut & Dry Fruits",
          ),
          Category(
            image_loc: "images/rawveg.jpg",
            image_cap: "raw Vegetables",
          ),
          Category(
            image_loc: "images/station.jpg",
            image_cap: "Stationery",
          ),
          Category(
            image_loc: "images/pets.jpg",
            image_cap: "Pets Care",
          ),
          Category(
            image_loc: "images/kitchen.jpeg",
            image_cap: "Kitchen Accessories",
          )

        ],
      )
    );
  }
}

class Category extends StatelessWidget {
  final String image_loc;
  final String image_cap;
  Category({
    this.image_loc,
    this.image_cap
});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(3.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          height: 80,
          child: ListTile(
            title: Image.asset(image_loc,width: 100,height: 60,),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_cap)),
          ),
        ),
      ),
    );
  }
}

