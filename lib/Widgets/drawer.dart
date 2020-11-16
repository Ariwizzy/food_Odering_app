import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:high_cpc_app/Screens/favorite_screen.dart';
import 'package:high_cpc_app/Screens/home_screen.dart';
import 'package:high_cpc_app/Screens/location_screen.dart';
import 'package:high_cpc_app/Screens/profile_screen.dart';
import 'package:high_cpc_app/Screens/support_screen.dart';
import 'package:high_cpc_app/Screens/transaction_screen.dart';

class Dwidget extends StatelessWidget {
  Container listCon(String _text, IconData _icon, Function _tap) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 31,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(
          child: ListTile(
            onTap: _tap,
            title: Text(
              _text,
              style: TextStyle(color: Colors.grey[600]),
            ),
            leading: Icon(
              _icon,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Image.asset("images/chi.png"),
          listCon("Meal", Icons.restaurant, () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          }),
          listCon("favorite", Icons.star, () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FavScreen(),
              ),
            );
          }),
          listCon("Profile", Icons.person, () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
          }),
          listCon("Transaction History", Icons.settings_backup_restore, () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TransactionScreen(),
              ),
            );
          }),
          listCon("Locations", Icons.navigation, () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LocationScreen(),
              ),
            );
          }),
          listCon("Support", Icons.perm_contact_calendar, () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SupportScreen(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
