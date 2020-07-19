import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CoList extends StatelessWidget {
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
                            title: Text("All Beverages & Concentrates"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Water"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Juices"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Soft Drinks"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Tea"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Coffee"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Aerated Drinks"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Health Drinks"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Concentrates"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Milk"),
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
