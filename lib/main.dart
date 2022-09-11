// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/ItemPage.dart';

import 'Pages/CardPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/SignInPage.dart';
import 'Pages/SignUpPage.dart';
import 'Pages/Splash Screen.dart';

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
        scaffoldBackgroundColor: Color.fromARGB(255, 231, 231, 213),
      ),
      // themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "signIn": (context) => SignInPage(),
        "signUp": (context) => SignUpPage(),
        "homePage": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(
              image: "assets/images/biryani.png",
              text: "Hot Biryani",
              subText:
                  "One of the most royal delicacies that you can enjoy on any occasion or festival, Chicken Biryani is the epitome of a one-pot meal. Well, no one can resist the sight of the aromatic and delicious Chicken Biryani recipe. If you are also craving that, then you need not go anywhere as we have got this super-easy biryani recipe for you. So, what are you waiting for? Do try this delicious Chicken Biryani recipe and enjoy it with your loved ones.",
            ),
        "itemPage1": (context) => ItemPage(
              image: "assets/images/burger.png",
              text: "Hot Burger",
              subText:
                  "One of the most royal delicacies that you can enjoy on any occasion or festival, Chicken Biryani is the epitome of a one-pot meal. Well, no one can resist the sight of the aromatic and delicious Chicken Biryani recipe. If you are also craving that, then you need not go anywhere as we have got this super-easy biryani recipe for you. So, what are you waiting for? Do try this delicious Chicken Biryani recipe and enjoy it with your loved ones.",
            ),
        "itemPage2": (context) => ItemPage(
              image: "assets/images/pizza.png",
              text: "Hot Pizza",
              subText:
                  "One of the most royal delicacies that you can enjoy on any occasion or festival, Chicken Biryani is the epitome of a one-pot meal. Well, no one can resist the sight of the aromatic and delicious Chicken Biryani recipe. If you are also craving that, then you need not go anywhere as we have got this super-easy biryani recipe for you. So, what are you waiting for? Do try this delicious Chicken Biryani recipe and enjoy it with your loved ones.",
            ),
        "itemPage3": (context) => ItemPage(
              image: "assets/images/salan.png",
              text: "Chiken Salan",
              subText:
                  "One of the most royal delicacies that you can enjoy on any occasion or festival, Chicken Biryani is the epitome of a one-pot meal. Well, no one can resist the sight of the aromatic and delicious Chicken Biryani recipe. If you are also craving that, then you need not go anywhere as we have got this super-easy biryani recipe for you. So, what are you waiting for? Do try this delicious Chicken Biryani recipe and enjoy it with your loved ones.",
            ),
        "itemPage4": (context) => ItemPage(
              image: "assets/images/drink.png",
              text: "Cold Drink",
              subText:
                  "One of the most royal delicacies that you can enjoy on any occasion or festival, Chicken Biryani is the epitome of a one-pot meal. Well, no one can resist the sight of the aromatic and delicious Chicken Biryani recipe. If you are also craving that, then you need not go anywhere as we have got this super-easy biryani recipe for you. So, what are you waiting for? Do try this delicious Chicken Biryani recipe and enjoy it with your loved ones.",
            ),
      },
    );
  }
}