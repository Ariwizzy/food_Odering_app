import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:high_cpc_app/Screens/order_food.dart';

class GridTWidget extends StatelessWidget {
  final String _text,description;
  final double prices;
  final String imgUrl;
  GridTWidget(this._text, this.imgUrl,this.description,this.prices);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FoodScreen(_text,imgUrl,description,prices),
              ),
            );
          },
          child: GridTile(
            footer: Container(
              color: Colors.grey[300],
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    _text,
                      style: GoogleFonts.balooBhaina(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 16
                      )
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow[800],
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(3),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
