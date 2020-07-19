import 'package:flutter/material.dart';
import 'cleanDetails.dart';

class Clean extends StatefulWidget {
  @override
  _CleanState createState() => _CleanState();
}

class _CleanState extends State<Clean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Cleaning"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new CleanDetails(),
    );
  }
}
