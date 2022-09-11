// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery_app/Widget/AppBarWidget.dart';
import 'package:food_delivery_app/Widget/DrawerWidget.dart';

import '../Widget/CartBottomNavBar.dart';
import '../Widget/ItemBottomNavBar.dart';
// import 'package:clippy_flutter/clippy_flutter.dart';

class ItemPage extends StatelessWidget {
  final image;
  final text;
  final subText;
  ItemPage({required this.image,this.text, this.subText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              image,
              height: 250,
              width: double.infinity,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 10,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                          Text(
                            "\$10",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(text,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 183, 111, 105),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                                Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      subText,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delievrey Time",
                            style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.clock,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("30 Minutes",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}