import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SList extends StatelessWidget {
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
                            title: Text("All Snacks & Sweets"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Biscuits & Cookies"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Snacks"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Chips"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Chocolates"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Sweets"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Noodles & Pasta & Vermicelli"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Jams & Dips"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Breakfast & Cereals"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Cakes & Pastries"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Bread & Buns"),
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
