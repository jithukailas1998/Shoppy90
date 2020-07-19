import 'package:flutter/material.dart';

import 'nutsdetails.dart';

class Nuts extends StatefulWidget {
  @override
  _NutsState createState() => _NutsState();
}

class _NutsState extends State<Nuts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Nuts and Dry Fruits"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new NutsDetails(),
    );
  }
}
