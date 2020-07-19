import 'package:flutter/material.dart';
import 'package:shoppy90/Details/Pulselist.dart';

import 'Details/babylist.dart';
import 'Details/beautylist.dart';
import 'Details/beveragelist.dart';
import 'Details/cleanlist.dart';
import 'Details/grocerylist.dart';
import 'Details/kitchenlist.dart';
import 'Details/nutslist.dart';
import 'Details/petslist.dart';
import 'Details/rawlist.dart';
import 'Details/snackslist.dart';
import 'Details/stationlist.dart';
class  CatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Category"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: Container(
        child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(height: 60.0),
                        Container(
                          height: 95,
                          child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Plist()));
                                },
                                child: Container(
                                  height: 140,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x80000000),
                                            offset: Offset(0.0,5.0),
                                            blurRadius: 30.0),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.red,
                                          Colors.redAccent,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                  ),
                                  child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                        ),
                                        new Image.asset(
                                          'images/icon1.png',

                                          height: 40.0,
                                        ),
                                        new Text(
                                          "Pulses",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              letterSpacing: 0.5,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ]
                                  ),
                                ),
                              )
                          ),

                        ),
                      ],
                    ),
                    SizedBox(height: 60.0),
                    Container(
                      height: 95,
                      child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Glist()));
                            },
                            child: Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x80000000),
                                        offset: Offset(0.0,5.0),
                                        blurRadius: 30.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.red,
                                      Colors.redAccent,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  )
                              ),
                              child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                    ),
                                    new Image.asset(
                                      'images/icon2.webp',

                                      height: 40.0,
                                    ),
                                    new Text(
                                      "Grocery",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w800),
                                    )
                                  ]
                              ),),
                          )
                      ),
                    ),

                  ], ),
              ),

              Container(
                padding: EdgeInsets.only(top: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(height: 60.0),
                        Container(
                          height: 95,
                          child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>BList()));

                                },
                                child: Container(
                                  height: 140,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x80000000),
                                            offset: Offset(0.0,5.0),
                                            blurRadius: 30.0),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.red,
                                          Colors.redAccent,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                  ),
                                  child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                        ),
                                        new Image.asset(
                                          'images/icon3.png',

                                          height: 40.0,
                                        ),
                                        new Text(
                                          "Mom&Baby Care",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              letterSpacing: 0.5,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ]
                                  ),),
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60.0),
                    Container(
                      height: 95,
                      child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>HList()));

                            },
                            child: Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x80000000),
                                        offset: Offset(0.0,5.0),
                                        blurRadius: 30.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.red,
                                      Colors.redAccent,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  )
                              ),
                              child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                    ),
                                    new Image.asset(
                                      'images/icon4.png',

                                      height: 40.0,
                                    ),
                                    new Text(
                                      "Beauty & Hygiene",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w800),
                                    )
                                  ]
                              ),),
                          )
                      ),
                    ),
                  ], ),
              ),
              Container(
                padding: EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(height: 60.0),
                       Container(
                          height: 95,
                          child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>CList()));
                                },
                                child: Container(
                                  height: 140,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x80000000),
                                            offset: Offset(0.0,5.0),
                                            blurRadius: 30.0),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.red,
                                          Colors.redAccent,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                  ),
                                  child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                        ),
                                        new Image.asset(
                                          'images/icon5.webp',

                                          height: 40.0,
                                        ),
                                        new Text(
                                          "Cleaning",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              letterSpacing: 0.5,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ]
                                  ),),
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60.0),
                    Container(
                      height: 95,
                      child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>SList()));
                            },
                            child: Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x80000000),
                                        offset: Offset(0.0,5.0),
                                        blurRadius: 30.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.red,
                                      Colors.redAccent,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  )
                              ),
                              child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                    ),
                                    new Image.asset(
                                      'images/icon6.png',

                                      height: 40.0,
                                    ),
                                    new Text(
                                      "Snacks",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w800),
                                    )
                                  ]
                              ),),
                          )
                      ),
                    ),
                  ], ),
              ),

              Container(
                padding: EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(height: 60.0),
                        Container(
                          height: 95,
                          child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>CoList()));
                                },
                                child: Container(
                                  height: 140,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x80000000),
                                            offset: Offset(0.0,5.0),
                                            blurRadius: 30.0),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.red,
                                          Colors.redAccent,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                  ),
                                  child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                        ),
                                        new Image.asset(
                                          'images/icon7.png',

                                          height: 40.0,
                                        ),
                                        new Text(
                                          "Beverages & Concentrates",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              letterSpacing: 0.5,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ]
                                  ),),
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60.0),
                    Container(
                      height: 95,
                      child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Nlist()));
                            },
                            child: Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x80000000),
                                        offset: Offset(0.0,5.0),
                                        blurRadius: 30.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.red,
                                      Colors.redAccent,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  )
                              ),
                              child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                    ),
                                    new Image.asset(
                                      'images/icon8.png',

                                      height: 40.0,
                                    ),
                                    new Text(
                                      "Nuts & dry Fruits",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w800),
                                    )
                                  ]
                              ),),
                          )
                      ),
                    ),
                  ], ),
              ),
              Container(
                padding: EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(height: 60.0),
                        Container(
                          height: 95,
                          child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Rlist()));
                                },
                                child: Container(
                                  height: 140,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x80000000),
                                            offset: Offset(0.0,5.0),
                                            blurRadius: 30.0),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.red,
                                          Colors.redAccent,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                  ),
                                  child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                        ),
                                        new Image.asset(
                                          'images/icon9.png',

                                          height: 40.0,
                                        ),
                                        new Text(
                                          "Raw Vegetables",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              letterSpacing: 0.5,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ]
                                  ),),
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60.0),
                    Container(
                      height: 95,
                      child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Stlist()));
                            },
                            child: Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x80000000),
                                        offset: Offset(0.0,5.0),
                                        blurRadius: 30.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.red,
                                      Colors.redAccent,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  )
                              ),
                              child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                    ),
                                    new Image.asset(
                                      'images/icon10.png',

                                      height: 40.0,
                                    ),
                                    new Text(
                                      "Stationery",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w800),
                                    )
                                  ]
                              ),),
                          )
                      ),
                    ),
                  ], ),
              ),
              Container(
                padding: EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(height: 60.0),
                        Container(
                          height: 95,
                          child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Petlist()));
                                },
                                child: Container(
                                  height: 140,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x80000000),
                                            offset: Offset(0.0,5.0),
                                            blurRadius: 30.0),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.red,
                                          Colors.redAccent,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                  ),
                                  child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                        ),
                                        new Image.asset(
                                          'images/icon11.png',

                                          height: 40.0,
                                        ),
                                        new Text(
                                          "Pets Care",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              letterSpacing: 0.5,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ]
                                  ),),
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60.0),
                    Container(
                      height: 95,
                      child: Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>Ktlist()));
                            },
                            child: Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x80000000),
                                        offset: Offset(0.0,5.0),
                                        blurRadius: 30.0),
                                  ],
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.red,
                                      Colors.redAccent,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  )
                              ),
                              child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                    ),
                                    new Image.asset(
                                      'images/icon12.png',

                                      height: 40.0,
                                    ),
                                    new Text(
                                      "Kitchen Accessories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w800),
                                    )
                                  ]
                              ),),
                          )
                      ),
                    ),
                  ], ),
              ),
            ],
          ),
        ],),),
    );
  }
}
