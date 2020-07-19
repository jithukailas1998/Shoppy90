import 'package:flutter/material.dart';
import 'package:shoppy90/stationdetails.dart';

class Station extends StatefulWidget {
  @override
  _StationState createState() => _StationState();
}

class _StationState extends State<Station> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Stationery"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new StationDetails(),
    );
  }
}
