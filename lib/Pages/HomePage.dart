// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/AppBarWidget.dart';
import '../Widget/CategoriesWidget.dart';
import '../Widget/DrawerWidget.dart';
import '../Widget/NewestItemsWidget.dart';
import '../Widget/PopularItemWidget.dart';
import '../Widget/SearchBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Custom app Bar widget
          AppBarWidget(),

          // --------search bar-----------
          SearchBar(),

          // ---------category----------
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          CategoriesWidget(),

          // ---------popular Items Widget----------
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              "Popular",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          PopularItemWidget(),

          // --------------Newest Item-------------
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              "Newest",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          NewestItemsWidget(),
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3))
        ]),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.red,
            size: 30,
          ),
        ),
      ),
    );
  }
}
