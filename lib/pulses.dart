import 'package:flutter/material.dart';
import 'pulsesDetails.dart';
class Pulses extends StatefulWidget {
  @override
  _PulsesState createState() => _PulsesState();
}

class _PulsesState extends State<Pulses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Pulses"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new PulsesDetails(),
    );
  }
}
