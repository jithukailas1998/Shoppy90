import 'package:flutter/material.dart';
import 'package:shoppy90/bevdetails.dart';

class Beverage extends StatefulWidget {
  @override
  _BeverageState createState() => _BeverageState();
}

class _BeverageState extends State<Beverage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Beverage"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new BevDetails(),
    );
  }
}
