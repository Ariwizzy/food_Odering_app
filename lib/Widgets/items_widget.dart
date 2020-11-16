import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../datas.dart';
import 'grid_tile.dart';

class ItemWidget extends StatelessWidget {
  List<Data> _items = [
    Data(
        description: "Pot Of Meat To celebrate with your family anytime fell free",
        title: "Pot Of Meat",
        imgUrl:
            "https://mir-s3-cdn-cf.behance.net/project_modules/fs/e0a1a427754049.5636a31f694f7.jpg",
        prices: 2400),
    Data(
        description: "Get a refuel meal for launch today to be loaded and also celebrate with your family anytime fell free ",
        title: "Refuel Meal",
        imgUrl:
            "https://images.milled.com/2020-02-25/KLl2UwXSXmvXHz_k/Uia3CrE6ftp3.jpg",
        prices: 500),
    Data(
        description: "Get a pie while waiting for your wonderful launch",
        title: "Meat Pie",
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS_p4CNOOPo-w5K5vR3tm2k2opB_v7Dtf__pQ&usqp=CAU",
        prices: 200),
    Data(
        description: "A full package for many people to celebrate a good time together",
        title: "Full Package",
        imgUrl:
            "https://mir-s3-cdn-cf.behance.net/project_modules/fs/e0a1a427754049.5636a31f694f7.jpg",
        prices: 500),
    Data(
        description: "Crunchy Chicken Taste Better with coke and a little spices",
        title: "Crunchy Chicken",
        imgUrl:
            "https://www.rockrecipes.com/wp-content/uploads/2012/03/Crispy-Chicken-Wings-with-Sticky-Maple-Chipotle-Glaze-Close-up-photo-of-several-wings-stacked-on-a-white-plate.jpg",
        prices: 980),
    Data(
        description: "for Families and friends spend grate time together and keep memories",
        title: "Family Package",
        imgUrl:
            "https://www.humanresourcemag.com/pictures/companies/wall_pictures/175757033_Cwu8I1GVEAArK-k.jpg",
        prices: 500),
    Data(
        description: "Every youth Choice Stay happy while u are still young times flies",
        title: "Youth Package",
        imgUrl:
            "https://fastly.4sqi.net/img/general/600x600/25329382_-Ex6tcD6UL6CXWZzLN0aHSrHv-bSAHoNzBBBfh7-aG0.jpg",
        prices: 500),
    Data(
        description: "Make it Happen No Better Time Than This Always do what Makes you happy",
        title: "Loaded Meat",
        imgUrl:
            "https://i.pinimg.com/originals/f5/18/22/f51822af69c06bba8d425e3b5153eb42.jpg",
        prices: 500),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 5,right: 5,top: 5),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.red)),
                hintText: 'What would You Like to eat today ?',
                labelText: 'Felling Hungry?',suffixIcon:Icon(Icons.search) ,

              ),
            )),
        Flexible(
          child: GridView.builder(
              itemCount: _items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return GridTWidget(_items[index].title,_items[index].imgUrl,_items[index].description,_items[index].prices);
              }),
        ),
      ],
    );
  }
}
