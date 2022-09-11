// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/AppBarWidget.dart';
import '../Widget/CartBottomNavBar.dart';
import '../Widget/DrawerWidget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Order List",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                OrderList("assets/images/burger.png", "Hot Burger",
                    "Test Our Hot Burger", "2"),
                OrderList("assets/images/pizza.png", "Hot Pizza",
                    "Test Our Hot Pizza", "3"),
                // OrderList("assets/images/salan.png", "Hot Salan",
                //     "Test Our Hot Salan", "1"),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  child: Container(
                    // height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Items:",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500)),
                              Text("10",style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500))
                            ],
                          ),
                          Divider(color: Colors.black,thickness: 1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sub-Total:",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500)),
                              Text("\$60",style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500))
                            ],
                          ),
                           Divider(color: Colors.black38,thickness: 1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery:",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500)),
                              Text("\$20",style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500))
                            ],
                          ),
                          Divider(color: Colors.black26,thickness: 1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total:",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold)),
                              Text("\$80",style: TextStyle(
                                      fontSize: 20,color: Colors.red, fontWeight: FontWeight.w500))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
       drawer: DrawerWidget(),
       bottomNavigationBar: CartBottomNavBar(),
    );
  }

  Padding OrderList(image, text, subText, quantity) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 3,
                offset: Offset(0, 3),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 110,
                width: 120,
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      text,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      subText,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("\$10",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 35,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 183, 111, 105),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        CupertinoIcons.minus,
                        color: Colors.white,
                      ),
                      Text(
                        quantity,
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Icon(
                        CupertinoIcons.plus,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}