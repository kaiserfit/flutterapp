// import 'dart:html';

// import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String btnName = "Button Unclicked";
  bool clicked = false;
  int currIndex = 2;
  String _context = "a";
  dynamic btn1Color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_context),
          backgroundColor: Colors.grey.shade900,
        ),
        body: Center(
          child: currIndex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.white54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: btn1Color,
                          foregroundColor: Colors.black,
                          shadowColor: Colors.blueGrey,
                          shape: const CircleBorder(
                            side: BorderSide(
                                width: 2,
                                color: Colors.grey,
                                style: BorderStyle.solid),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            clicked = !clicked;
                            if (clicked) {
                              btn1Color = Colors.greenAccent;
                            } else {
                              btn1Color = Colors.red;
                            }
                          });
                        },
                        child: const Text(""),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            clicked = !clicked;
                            if (clicked) {
                              btnName = 'Button Clicked';
                            } else {
                              btnName = 'Button Unclicked';
                            }
                          });
                        },
                        child: Text(btnName),
                      ),
                    ],
                  ),
                )
              : Container(
                  color: Colors.white,
                  child: Image.asset('images/brand.png'),
                ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'My Stuff',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_android_sharp), label: 'Coach'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp), label: 'Account')
          ],
          fixedColor: Colors.white,
          backgroundColor: Colors.grey.shade900,
          type: BottomNavigationBarType.fixed,
          currentIndex: currIndex,
          unselectedItemColor: Colors.grey.shade700,
          unselectedFontSize: 12,
          onTap: (int index) {
            setState(() {
              currIndex = index;
            });
          },
        ),
      ),
    );
  }
}
