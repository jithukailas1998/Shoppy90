import 'package:flutter/material.dart';
import 'package:shoppy90/list.dart';

class ProductState5 extends StatefulWidget {

  final prodetailsName;
  final prodetailsNewPrice;
  final prodetailsOldPrice;
  final prodetailsPic;

  ProductState5({
    this.prodetailsName,
    this.prodetailsNewPrice,
    this.prodetailsOldPrice,
    this.prodetailsPic
  });

  @override
  _ProductState5State createState() => _ProductState5State();
}

class _ProductState5State extends State<ProductState5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text("Shoppy 90"),
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              height: 300,
              color: Colors.black,
              child: GridTile(
                child: Container(
                  color: Colors.white70,
                  child: Image.asset(widget.prodetailsPic),
                ),
                footer: new Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: new Text(widget.prodetailsName,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text("${widget.prodetailsOldPrice}",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)
                        ),
                        Expanded(
                            child: new Text("${widget.prodetailsNewPrice}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold))
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: MaterialButton(
                        onPressed: () {
                          showDialog(context: context,builder: (context){
                            return AlertDialog(
                              title: new Text("Amount"),
                              content: new Text("Choose the amount"),
                              actions: <Widget>[
                                new MaterialButton(onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                    child: new Text("close")
                                )
                              ],
                            );
                          });

                        },
                        color: Colors.white,
                        textColor: Colors.grey,
                        elevation: 0.2,
                        child: Row(
                            children: <Widget>[
                              Expanded(child: new Text("Amt",style: TextStyle(color: Colors.black,))
                              ),
                              Expanded(child: new Icon(Icons.arrow_drop_down)
                              ),
                            ]
                        ))),
                Expanded(
                    child: MaterialButton(
                        onPressed: () {
                          showDialog(context: context,builder: (context){
                            return AlertDialog(
                              title: new Text("Quantity"),
                              content: new Text("Choose the Quantity"),
                              actions: <Widget>[
                                new MaterialButton(onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                    child: new Text("close")
                                )
                              ],
                            );
                          });
                        },
                        color: Colors.white,
                        textColor: Colors.grey,
                        elevation: 0.2,
                        child: Row(
                            children: <Widget>[
                              Expanded(child: new Text("Qty",style: TextStyle(color: Colors.black,))
                              ),
                              Expanded(child: new Icon(Icons.arrow_drop_down)
                              ),
                            ]
                        ))),
                Expanded(
                    child: MaterialButton(
                        onPressed: () {
                          showDialog(context: context,builder: (context){
                            return AlertDialog(
                              title: new Text("Color"),
                              content: new Text("Choose the Color"),
                              actions: <Widget>[
                                new MaterialButton(onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                    child: new Text("close")
                                )
                              ],
                            );
                          });

                        },
                        color: Colors.white,
                        textColor: Colors.grey,
                        elevation: 0.2,
                        child: Row(
                            children: <Widget>[
                              Expanded(child: new Text("Color",style: TextStyle(color: Colors.black,))
                              ),
                              Expanded(child: new Icon(Icons.arrow_drop_down)
                              ),
                            ]
                        )))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: MaterialButton(
                        onPressed: () {

                        },
                        color: Colors.red,
                        textColor: Colors.white,
                        elevation: 0.2,
                        child: new Text("Buy Now")

                    )),
                Expanded(
                    child: MaterialButton(
                        onPressed: () {

                        },
                        color: Colors.white,
                        textColor: Colors.black,
                        elevation: 0.2,
                        child: Row(
                            children: <Widget>[
                              Expanded(child: new Text("ADD TO CART")
                              ),
                            ]
                        ))),
              ],
            ),
            Divider(),
            new ListTile(
              title: new Text("Details"),
              subtitle: new Text("Paper Boat drinks are all your favorite old flavors in a new avatar. Our varieties of beverages include jaljeera, aamras, tulsi tea and more."),
            ),
            Divider(),
            new Text("Similar Products",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            new Container(
              height: 360,
              child: SimilarProducts(),
            ),
          ],
        )
    );
  }
}


class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var pro_list=[
    {
      "name" : "Kissan",
      "pic":"images/19.jpg",
      "price":30,
      "old_price":35,
    },
    {
      "name" : "Tang",
      "pic":"images/20.jpg",
      "price":130,
      "old_price":235,
    },
    {
      "name" : "ENO",
      "pic":"images/21.jpg",
      "price":50,
      "old_price":65,
    },
    {
      "name" : "Rasna",
      "pic":"images/41.jpg",
      "price":30,
      "old_price":35,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pro_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Clean_prod(
            prod_name: pro_list[index]["name"],
            prod_pic: pro_list[index]["pic"],
            prod_price: pro_list[index]["price"],
            prod_old: pro_list[index]["old_price"],
          );
        });
  }
}

class Clean_prod extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_price;
  final prod_old;
  Clean_prod({
    this.prod_name,
    this.prod_pic,
    this.prod_price,
    this.prod_old
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: (){},
            child: GridTile(
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                  leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.w800),),
                  title: Text("\R\s$prod_price",style: TextStyle(fontWeight: FontWeight.w600),),
                  subtitle: Text("\R\s$prod_old",style: TextStyle(fontWeight: FontWeight.w300,decoration: TextDecoration.lineThrough),),
                ),
              ),
              child: Image.asset(prod_pic,fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}
