import 'package:flutter/material.dart';
import 'package:shoppy90/BabyDetails.dart';
class Baby extends StatefulWidget {
  @override
  _BabyState createState() => _BabyState();
}

class _BabyState extends State<Baby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Mom & Baby Care"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new BabyDetails(),
    );
  }
}
