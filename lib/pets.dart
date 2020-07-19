import 'package:flutter/material.dart';
import 'package:shoppy90/petsdetails.dart';

class Pets extends StatefulWidget {
  @override
  _PetsState createState() => _PetsState();
}

class _PetsState extends State<Pets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Pet Care"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new PetsDetails(),
    );
  }
}
