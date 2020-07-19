import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartProd extends StatefulWidget {
  @override
  _CartProdState createState() => _CartProdState();
}

class _CartProdState extends State<CartProd> {
  var productCart = [
    {
      "name" : "Turmeric",
      "pic":"images/turm.jpg",
      "price":30,
      "Amount": "500gm",
      "Quantity" :"2",
    },
    {
      "name" : "Baby Care",
      "pic":"images/lotion.jpg",
      "price":130,
      "Amount": "500ml",
      "Quantity" :"1",
    },
    {
      "name" : "Rice",
      "pic":"images/grocery.jpg",
      "price":400,
      "Amount": "10kg",
      "Quantity": "2",

    },
    {
      "name" : "Cooker",
      "pic":"images/cook.jpg",
      "price":1100,
      "Amount": "10L",
      "Quantity":"2"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productCart.length,
      itemBuilder: (context,index){
        return SingleCart(
          prodetailsName: productCart[index]['name'],
          prodetailsPic: productCart[index]['pic'],
          prodetailsNewPrice: productCart[index]['price'],
          prodAmount: productCart[index]['Amount'],
          prodQty: productCart[index]['Quantity'],

        );
      },
    );
  }
}
class SingleCart extends StatelessWidget {
  final prodetailsName;
  final prodetailsNewPrice;
  final prodetailsPic;
  final prodAmount;
  final prodQty;
  SingleCart({
    this.prodetailsName,
    this.prodetailsNewPrice,
    this.prodetailsPic,
    this.prodAmount,
    this.prodQty,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(prodetailsPic,width: 80,height: 100,),
        title: new Text(prodetailsName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        subtitle: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                    child: new Text(prodAmount),
                ),
              ],
            ),
          ],
        ),
        trailing: new Container(
            child: new Text("\R\s $prodetailsNewPrice",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),)
        )
        ),
    );
  }
}

