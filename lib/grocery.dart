import 'package:flutter/material.dart';

import 'grocerydetails.dart';

class Grocery extends StatefulWidget {
  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Grocery"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new GroceryDetails(),
    );
  }
}
