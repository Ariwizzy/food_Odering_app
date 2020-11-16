import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodScreen extends StatefulWidget {
  final String appBarText, imgUrl, description;
  final double prices;
  FoodScreen(this.appBarText, this.imgUrl, this.description, this.prices);
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  int numberCount = 1;
  Icon iconChange = Icon(
    Icons.favorite_border,
    color: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.appBarText,
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 0, right: 0, top: 5),
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.02,
                child: Card(
                  elevation: 2,
                  child: Image.network(
                    widget.imgUrl,
                    fit: BoxFit.cover,
                  ),
                )),
            Spacer(),
            Container(
              padding: EdgeInsets.only(
                left: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 12,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height / 2.5,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.appBarText,
                      style: GoogleFonts.abel(
                          fontWeight: FontWeight.bold, fontSize: 25)),
                  Text(widget.description),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.remove_circle_outline, size: 30),
                          onPressed: () {
                            setState(() {
                              if (numberCount > 1) {
                                numberCount--;
                              }
                            });
                          }),
                      Text(
                        "$numberCount",
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              numberCount++;
                            });
                          }),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.9,
                      ),
                      Text(
                        "‎₦${widget.prices}",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 60),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.red,
                              )),
                          child: IconButton(
                              icon: iconChange,
                              onPressed: () {
                                setState(() {
                                  iconChange = Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  );
                                });
                              }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FlatButton.icon(
                            padding: EdgeInsets.only(
                                left: 125, right: 125, top: 10, bottom: 10),
                            color: Colors.red,
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Add To Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
