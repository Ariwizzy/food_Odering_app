import 'package:flutter/material.dart';
import 'package:high_cpc_app/Widgets/drawer.dart';
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Profile",style: TextStyle(color: Colors.red),),
      ),
      drawer: Dwidget(),
    );
  }
}
