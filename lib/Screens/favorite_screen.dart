import 'package:flutter/material.dart';
import 'package:high_cpc_app/Widgets/constant.dart';
import 'package:high_cpc_app/Widgets/drawer.dart';

class FavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Favorite Meal",
          style: TextStyle(color: Colors.red),
        ),
      ),
      drawer: Dwidget(),
      body: Center(
          child: Text(
        "Your Favorite Meal Will Appear Here",
        style: KtextStyle,
      )),
    );
  }
}
