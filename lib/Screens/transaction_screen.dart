import 'package:flutter/material.dart';
import 'package:high_cpc_app/Widgets/constant.dart';
import 'package:high_cpc_app/Widgets/drawer.dart';

import 'home_screen.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Transaction History",
          style: TextStyle(color: Colors.red),
        ),
      ),
      drawer: Dwidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Center(
            child: Text(
              "You Havent't done any transaction yet",
              style: KtextStyle,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: Container(
              height: 70,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 50, left: 5, right: 5),
              decoration: BoxDecoration(
                  color: Colors.yellow[700],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Center(
                child: Text(
                  "Order Now",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
