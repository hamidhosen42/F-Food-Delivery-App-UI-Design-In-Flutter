// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'Pages/CardPage.dart';
import 'Pages/HomePage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5f5F3),
      ),
      // themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
      },
    );
  }
}
