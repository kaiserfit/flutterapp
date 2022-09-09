import 'package:flutter/material.dart';

void main() {
  runApp(const Shop());
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: const [0.1, 0.6, 0.7, 1],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.grey.shade800,
                Colors.grey.shade700,
                Colors.grey.shade600,
                Colors.grey.shade400,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
