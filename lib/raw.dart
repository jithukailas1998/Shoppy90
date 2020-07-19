import 'package:flutter/material.dart';
import 'package:shoppy90/rawdetails.dart';
class Raw extends StatefulWidget {
  @override
  _RawState createState() => _RawState();
}

class _RawState extends State<Raw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Raw Vegetables"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new RawDetails(),
    );
  }
}
