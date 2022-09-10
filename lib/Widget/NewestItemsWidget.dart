// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Column(
          children: [
            InkWell(
              onTap: (() {}),
              child: NewestItem("assets/images/biryani.png", "Chiken Biryani",
                  "Test Our Chiken Biryani,We Provide Our Great Foods"),
            ),
            InkWell(
              onTap: () {},
              child: NewestItem("assets/images/burger.png", "Hot Burger",
                  "Test Our Hot Burger,We Provide Our Great Foods"),
            ),
            InkWell(
              onTap: () {},
              child: NewestItem("assets/images/pizza.png", "Hot Pizza",
                  "Test Our Hot Pizza,We Provide Our Great Foods"),
            ),
            InkWell(
              onTap: () {},
              child: NewestItem("assets/images/salan.png", "Chiken Salan",
                  "Test Our Hot Chiken Salan,We Provide Our Great Foods"),
            ),
            InkWell(
              onTap: () {},
              child: NewestItem("assets/images/drink.png", "Cold Drink",
                  "Test Our Cold Drink,We Provide Our Great Foods"),
            ),
          ],
        ),
      ),
    );
  }

  Padding NewestItem(image, text, subtext) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Container(
        height: 150,
        width: double.infinity,
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
        child: Row(
          children: [
            Container(
              height: 150,
              width: 140,
              child: Image.asset(image),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.red,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      subtext,
                      style: TextStyle(
                        fontSize: 15,
                      ),
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
                    height: 5,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$10",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                        Icon(
                          CupertinoIcons.cart,
                          color: Colors.red,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}