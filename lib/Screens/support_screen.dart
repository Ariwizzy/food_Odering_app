import 'package:flutter/material.dart';
import 'package:high_cpc_app/Widgets/drawer.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Support",
          style: TextStyle(color: Colors.red),
        ),
      ),
      drawer: Dwidget(),
      body: Center(
          child: Text("Support is  currently not available in your Contry")),
    );
  }
}
