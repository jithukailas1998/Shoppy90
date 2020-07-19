import 'package:flutter/material.dart';
import 'cartproducts.dart';
class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Cart"),
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new CartProd(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total"),
                subtitle: new Text("\R\s 1660"),
              ),
            ),
            Expanded(
              child: new MaterialButton(onPressed: () {},
                child: new Text("Check out",style:TextStyle(color: Colors.white,fontSize: 20)),
                color: Colors.red,
              )
            )
          ],
        )
      ),
    );
  }
}
