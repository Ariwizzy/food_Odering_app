import 'package:flutter/material.dart';
import 'package:high_cpc_app/Widgets/drawer.dart';
class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Location",style: TextStyle(color: Colors.red),),
      ),
      drawer: Dwidget(),
    );
  }
}
