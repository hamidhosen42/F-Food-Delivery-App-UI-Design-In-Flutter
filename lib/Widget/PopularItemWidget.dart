// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "itemPage");
              },
              child: PopulerItem("assets/images/biryani.png", "Chiken Biryani",
                  "Test Our Hot Biryani"),
            ),
            InkWell(
               onTap: (){
                Navigator.pushNamed(context, "itemPage1");
              },
              child: PopulerItem("assets/images/burger.png", "Hot Burger",
                  "Test Our Hot Burger"),
            ),
            InkWell(
               onTap: (){
                Navigator.pushNamed(context, "itemPage2");
              },
              child: PopulerItem(
                  "assets/images/pizza.png", "Hot Pizza", "Test Our Hot Pizza"),
            ),
            InkWell(
               onTap: (){
                Navigator.pushNamed(context, "itemPage3");
              },
              child: PopulerItem(
                  "assets/images/salan.png", "Chiken Salan", "Test Chiken Salan"),
            ),
            InkWell(
               onTap: (){
                Navigator.pushNamed(context, "itemPage4");
              },
              child: PopulerItem(
                  "assets/images/drink.png", "Cold Drink", "Test Cold Drink"),
            ),
          ],
        ),
      ),
    );
  }

  Padding PopulerItem(image, text, subtext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        height: 235,
        width: 150,
        // ignore: sort_child_properties_last
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                child: Image.asset(
                  image,
                  height: 100,
                )),
            Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              subtext,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RatingBar.builder(
              itemSize: 22,
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.red,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
             SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$10",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                       color: Colors.red)),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ]),
      ),
    );
  }
}