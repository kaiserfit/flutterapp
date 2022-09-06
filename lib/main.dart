// import 'dart:html';

import 'dart:math';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                    shadowColor: Colors.blueGrey,
                    shape: const CircleBorder(
                      side: BorderSide(
                          width: 2,
                          color: Colors.red,
                          style: BorderStyle.solid),
                    ),
                  ),
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
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings')
          ],
          currentIndex: currIndex,
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
