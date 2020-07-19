import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Stlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shoppy 90",
        home: Scaffold(
          appBar: AppBar(
            title: Text("List"),
            backgroundColor: Colors.red,
          ),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("All Stationery"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Pen & Pencils"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Books Files and Folders"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Crayons and Colors"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Others"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Tissues & Napkins"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Electricals"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
