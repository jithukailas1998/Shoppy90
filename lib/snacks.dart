import 'package:flutter/material.dart';
import 'package:shoppy90/snacksdetails.dart';

class Snacks extends StatefulWidget {
  @override
  _SnacksState createState() => _SnacksState();
}

class _SnacksState extends State<Snacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Snacks"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new SnacksDetails(),
    );
  }
}
