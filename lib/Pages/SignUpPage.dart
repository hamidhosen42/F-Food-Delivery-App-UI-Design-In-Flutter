// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: const Text(
                  "Sign Up Page",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Cursive",
                      color: Colors.blueAccent),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already an User ?  ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    TextButton(
                        onPressed: () {
                           Navigator.pushNamed(context, "signIn");
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.blueAccent),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, "homePage");
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}