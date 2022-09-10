// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: Row(
          children: [
            // -------single Item----------
            SingleItem("assets/images/drink.png"),
            SingleItem("assets/images/biryani.png"),
            SingleItem("assets/images/burger.png"),
            SingleItem("assets/images/pizza.png"),
            SingleItem("assets/images/biryani.png"),
            SingleItem("assets/images/salan.png")
          ],
        ),
      ),
    );
  }

  Padding SingleItem(image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        child: Image.asset(
          image,
          height: 50,
          width: 50,
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