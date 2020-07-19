import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Glist extends StatelessWidget {
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
                            title: Text("All Grocery"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Rice & Wheat"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Flours"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Masala & Spice Powder"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Salt and Sugar Jaggery"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Ghee and Edible Oils"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Cooking Essentials"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Ready To Cook Items"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Vinegar"),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Pickles & Chammanthi Powders"),
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
