import 'package:flutter/material.dart';
import 'Beautydetails.dart';
class Beauty extends StatefulWidget {
  @override
  _BeautyState createState() => _BeautyState();
}

class _BeautyState extends State<Beauty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Beauty & Hygiene"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new BeautyDetails(),
    );
  }
}
