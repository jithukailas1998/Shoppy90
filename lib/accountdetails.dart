import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Auth/auth.dart';

void main() => runApp( AccDetails());

class  AccDetails extends StatelessWidget {
  FirebaseAuth fAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();

  String uid;

  AccDetails({this.uid});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shoppy 90",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Account"),
          backgroundColor: Colors.red,
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: Container(
                      width: double.infinity,
                      color: Colors.white10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(top:50,right: 5)
                      ),
                          Image.asset("images/shoppylogo.png",width: 50,height: 40),
                          Padding(
                              padding: const EdgeInsets.only(top:20,right: 5)
                          ),
                          new Text("    Jithu Kailas",textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black,fontSize: 17,letterSpacing: 0.4,),),
                        ],

                      )
                  ),
                ),
                Divider(),
                SizedBox(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text("My Orders"),
                          leading: Icon(Icons.shopping_basket),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text("My Wishlist"),
                          leading: Icon(Icons.favorite_border),
                        ),
                      ),
                    ],
                  )
                ),
                Divider(),
                SizedBox(
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Account"),
                            leading: Icon(Icons.account_circle),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Change password"),
                            leading: Icon(Icons.border_color),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text("Address"),
                            leading: Icon(Icons.location_on),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            AuthProvider().logOut();
                          },
                          child: ListTile(
                            title: Text("Logout"),
                            leading: Icon(Icons.lock),
                          ),
                        ),
                      ],
                    )
                ),



              ],
            )

          ],

        ),
      ),

    );
  }

}