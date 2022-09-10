// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';

import '../Widget/AppBarWidget.dart';
import '../Widget/CategoriesWidget.dart';
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
            padding: const EdgeInsets.only(left: 15,top: 20),
            child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          CategoriesWidget(),
        ],
      ),
    );
  }
}