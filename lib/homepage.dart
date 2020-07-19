import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'account.dart';
import 'home.dart';
//import 'account.dart';
import 'category.dart';
import 'cart.dart';
import 'search.dart';


class ShopHome extends StatelessWidget {

  FirebaseAuth fAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();

  String uid;

  ShopHome({this.uid});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  int _currentIndex=0;
  final _pages = [
    HomeScreen(),
    CatScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
    //AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            //backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("Category"),
            //backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text("Cart"),
            //backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            //backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Account"),
            //backgroundColor: Colors.yellow
          )
        ],
        onTap:(index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

}



