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
                  "Sink your teeth into a delicious restaurant-style, hamburger recipe made from lean beef. Skip the prepackaged patties and take the extra time to craft up your own, and that little extra effort will be worth it. To make cheeseburgers, about 1 minute before burgers are done, top with sliced cheese; continue cooking until cheese begins to melt.",
            ),
        "itemPage2": (context) => ItemPage(
              image: "assets/images/pizza.png",
              text: "Hot Pizza",
              subText:
                  "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot.",
            ),
        "itemPage3": (context) => ItemPage(
              image: "assets/images/salan.png",
              text: "Chiken Salan",
              subText:
                  "Chicken salan is just so pure and warming, a simple and satisfying hug in a bowl. It’s pretty straightforward to make with a few basic ingredients we all probably have on hand if we cook Desi food on the regular. While it requires a few additional whole spices to elevate the curry, they are completely optional – though highly recommended!.",
            ),
        "itemPage4": (context) => ItemPage(
              image: "assets/images/drink.png",
              text: "Cold Drink",
              subText:
                  "Soft drink, any of a class of nonalcoholic beverages, usually but not necessarily carbonated, normally containing a natural or artificial sweetening agent, edible acids, natural or artificial flavours, and sometimes juice. Natural flavours are derived from fruits, nuts, berries, roots, herbs, and other plant sources. Coffee, tea, milk, cocoa, and undiluted fruit and vegetable juices are not considered soft drinks.",
            ),
      },
    );
  }
}