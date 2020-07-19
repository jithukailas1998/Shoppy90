import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppy90/Baby.dart';
import 'package:shoppy90/Beauty.dart';
import 'package:shoppy90/Kitchen.dart';
import 'package:shoppy90/bev.dart';
import 'package:shoppy90/cart.dart';
import 'package:shoppy90/clean.dart';
import 'package:shoppy90/grocery.dart';
import 'package:shoppy90/lists.dart';
import 'package:shoppy90/nuts.dart';
import 'package:shoppy90/pets.dart';
import 'package:shoppy90/pro2.dart';
import 'package:shoppy90/pro3.dart';
import 'package:shoppy90/pro4.dart';
import 'package:shoppy90/pro5.dart';
import 'package:shoppy90/product_details.dart';
import 'package:shoppy90/pulses.dart';
import 'package:shoppy90/raw.dart';
import 'package:shoppy90/snacks.dart';
import 'package:shoppy90/station.dart';
import 'Auth/auth.dart';
import 'list.dart';
import 'products.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shoppy 90",
      home: HomeField(
      ),
    );
  }
}

class HomeField extends StatefulWidget {
  @override
  _HomeFieldState createState() => _HomeFieldState();
}

class _HomeFieldState extends State<HomeField> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser userDetails;
  @override
  initState() {
    _auth.currentUser().then((FirebaseUser user){
      setState(() {
        userDetails = user;
      });

    });
    super.initState();
    //FirebaseService Lisnter = new FirebaseService();
  }
  @override
  Widget build(BuildContext context) {
    Widget image_car = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/welcome.png"),
          AssetImage("images/welcome.png"),
        ],
        autoplay: true,
        dotSize: 6,
        dotColor: Colors.red,
        indicatorBgPadding: 2,
        dotBgColor: Colors.transparent,
      ),
    );

    Widget searchBar = new Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      color: Colors.red,
      height: 60,
      child: TextField(
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans',
        ),
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(1.0)),
              borderSide: BorderSide(color: Colors.white, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.red),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: 'Enter your content',
            hintStyle: TextStyle(color: Colors.black)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.headset_mic, color: Colors.white,),
              onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.account_balance_wallet, color: Colors.white,),
              onPressed: () {}),
          new IconButton(icon: Icon(Icons.notifications, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      drawer: new Drawer(
          child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text(userDetails==null?"Loading..":userDetails.displayName),
                  accountEmail: Text(userDetails==null?"Loading..":userDetails.email),
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Image.asset("images/appstore.png"),
                    ),
                  ),
                  decoration: new BoxDecoration(
                      color: Colors.red
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("My Orders"),
                    leading: Icon(Icons.shopping_basket),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> CartScreen()));
                  },
                  child: ListTile(
                    title: Text("My Cart"),
                    leading: Icon(Icons.add_shopping_cart),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("My Wishlist"),
                    leading: Icon(Icons.favorite_border),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("My Account"),
                    leading: Icon(Icons.account_circle),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("My Wallet"),
                    leading: Icon(Icons.account_balance_wallet),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Loyality"),
                    leading: Icon(Icons.credit_card),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Share App"),
                    leading: Icon(Icons.share),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Check Delivery"),
                    leading: Icon(Icons.location_on),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Refund Policy"),
                    leading: Icon(Icons.monetization_on),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Privacy Policy"),
                    leading: Icon(Icons.lock),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Contact Us"),
                    leading: Icon(Icons.email),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("About us"),
                    leading: Icon(Icons.info_outline),
                  ),
                ),

                Divider(),

                InkWell(
                  onTap: () {
                    AuthProvider().logOut();
                  },
                  child: ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.lock_outline),
                  ),
                ),
              ]
          )
      ),
      body: Container(
        child: new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            image_car,
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Pulses()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/pulses.jpeg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Pulses",style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Baby()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/baby.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Mom & Baby care",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Beauty()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset( "images/beauty.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Beauty & Hygiene",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Clean()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/clean.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Cleaning",style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Grocery()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/grocery.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Grocery",style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Snacks()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/snacks.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Snacks",style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Beverage()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/beverage.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Beverages",style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Nuts()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/nuts.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Nuts & Dry Fruits",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Raw()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/rawveg.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Raw Vegetables",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Station()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/station.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Stationery",style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Pets()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/pets.jpg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Pets Care",style: TextStyle(color: Colors.black),)),
                        ),
                      ),
                    ),
                  ),Padding(padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Kitchen()));
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        child: ListTile(
                          title: Image.asset("images/kitchen.jpeg",width: 100,height: 60,),
                          subtitle: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Kitchen Accessory",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,),)),
                        ),
                      ),
                    ),
                  ),


                ],
              )
            ),

            //super sale
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text("Super Sale",style: TextStyle(color: Colors.red),),
            ),
            SizedBox(
              width: double.infinity,
              height: 210,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 150,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProductState(
                            prodetailsName: "Turmeric",
                            prodetailsNewPrice: "\R\s40",
                            prodetailsOldPrice: "\R\s55",
                            prodetailsPic: "images/turm.jpg",
                          )));
                        },
                        child: Card(
                            color: Colors.white70,
                            child:Wrap(
                              children: <Widget>[
                                Image.asset("images/turm.jpg"),
                                ListTile(
                                  leading: Text("Turmeric",style: TextStyle(fontWeight: FontWeight.w800),),
                                  title: Text("\R\s40",style: TextStyle(color:Colors.red,fontSize:14,fontWeight: FontWeight.w600),),
                                  subtitle: Text("\R\s55",style: TextStyle(fontWeight: FontWeight.w300,decoration: TextDecoration.lineThrough),),
                                )
                              ],
                            )
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProductState2(
                            prodetailsName: "Cooker",
                            prodetailsNewPrice: "\R\s1040",
                            prodetailsOldPrice: "\R\s1155",
                            prodetailsPic: "images/cook.jpg",
                          )));
                        },
                        child: Card(
                            color: Colors.white70,
                            child:Wrap(
                              children: <Widget>[
                                Image.asset("images/cook.jpg"),
                                ListTile(
                                  leading: Text("Cooker",style: TextStyle(fontWeight: FontWeight.w800),),
                                  title: Text("\R\s1040",style: TextStyle(color:Colors.red,fontSize:14,fontWeight: FontWeight.w600),),
                                  subtitle: Text("\R\s1155",style: TextStyle(fontWeight: FontWeight.w300,decoration: TextDecoration.lineThrough),),
                                )
                              ],
                            )
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProductState3(
                            prodetailsName: "Pedigree",
                            prodetailsNewPrice: "\R\s230",
                            prodetailsOldPrice: "\R\s255",
                            prodetailsPic: "images/pets.jpg",
                          )));
                        },

                        child: Card(
                            color: Colors.white70,
                            child:Wrap(
                              children: <Widget>[
                                Image.asset("images/pets.jpg"),
                                ListTile(
                                  leading: Text("Pedigree",style: TextStyle(fontWeight: FontWeight.w800),),
                                  title: Text("\R\s230",style: TextStyle(color:Colors.red,fontSize:13,fontWeight: FontWeight.w400),),
                                  subtitle: Text("\R\s255",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300,decoration: TextDecoration.lineThrough),),
                                )
                              ],
                            )
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProductState4(
                            prodetailsName: "Cashew",
                            prodetailsNewPrice: "\R\s400",
                            prodetailsOldPrice: "\R\s455",
                            prodetailsPic: "images/cashew.jpg",
                          )));
                        },
                        child: Card(
                            color: Colors.white70,
                            child:Wrap(
                              children: <Widget>[
                                Image.asset("images/cashew.jpg"),
                                ListTile(
                                  leading: Text("Cashew",style: TextStyle(fontWeight: FontWeight.w800),),
                                  title: Text("\R\s400",style: TextStyle(color:Colors.red,fontSize:14,fontWeight: FontWeight.w600),),
                                  subtitle: Text("\R\s455",style: TextStyle(fontWeight: FontWeight.w300,decoration: TextDecoration.lineThrough),),
                                )
                              ],
                            )
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProductState5(
                            prodetailsName: "paperboat",
                            prodetailsNewPrice: "\R\s20",
                            prodetailsOldPrice: "\R\s25",
                            prodetailsPic: "images/beverage.jpg",
                          )));
                        },
                        child: Card(
                            color: Colors.white70,
                            child:Wrap(
                              children: <Widget>[
                                Image.asset("images/beverage.jpg"),
                                ListTile(
                                  leading: Text("Paperboat",style: TextStyle(fontWeight: FontWeight.w800),),
                                  title: Text("\R\s20",style: TextStyle(color:Colors.red,fontSize:12,fontWeight: FontWeight.w600),),
                                  subtitle: Text("\R\s25",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300,decoration: TextDecoration.lineThrough),),
                                )
                              ],
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}

