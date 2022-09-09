// import 'dart:html';

// import 'dart:math';

import 'package:flutter/material.dart';
import 'shop.dart';
import 'mystuff.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset('images/muted-logo.webp'),
    );
  }
}

class _MyAppState extends State<MyApp> {
  String btnName = "Button Unclicked";
  bool button1clicked = false;
  bool button2clicked = false;
  int currIndex = 0;

  dynamic btn1Color = Colors.red;
  final screens = [
    const Center(child: Text('Home', style: TextStyle(fontSize: 52))),
    const MyStuff(),
    const Center(child: Text('KaiserCoach', style: TextStyle(fontSize: 42))),
    const Shop(),
    const Center(child: Text('Account', style: TextStyle(fontSize: 52))),
  ];
  final appLabels = ['Home', 'My Stuff', 'KaiserCoach', 'Shop', 'Account'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // title: Text(_context),
          title: Text(appLabels[currIndex]),
          backgroundColor: Colors.grey.shade900,
        ),
        body: screens[currIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.transparent,
            backgroundColor: Colors.grey.shade900,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            labelTextStyle: MaterialStateProperty.all(const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white60,
            )),
          ),
          child: NavigationBar(
            height: 55,
            selectedIndex: currIndex,
            animationDuration: const Duration(milliseconds: 500),
            backgroundColor: Colors.grey.shade900,
            onDestinationSelected: (index) => setState(() => currIndex = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(
                  Icons.home_rounded,
                  color: Colors.grey,
                ),
                label: 'Home',
                selectedIcon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.grid_view,
                  color: Colors.grey,
                ),
                label: 'My Stuff',
                selectedIcon: Icon(
                  Icons.grid_view_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.phone_android_sharp,
                  color: Colors.grey,
                ),
                label: 'Coach',
                selectedIcon: Icon(
                  Icons.phone_android,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.grey,
                ),
                label: 'Shop',
                selectedIcon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.grey,
                ),
                label: 'Account',
                selectedIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
