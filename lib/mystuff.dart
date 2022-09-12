import 'package:flutter/material.dart';
import 'programs.dart';
import 'meals.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyStuff());
}

class MyStuff extends StatelessWidget {
  const MyStuff({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Stuff',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('images/lady-counter.webp'),
          //     fit: BoxFit.fill,
          //   ),
          color: Colors.transparent,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),

              //programs
              InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (BuildContext context) {
                        return const Programs();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    backgroundBlendMode: BlendMode.overlay,
                  ),
                  child: Ink.image(
                    image: const AssetImage('images/app-program-img.webp'),
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 3,
                    width: 400,
                    child: const Center(
                      child: Text(
                        'Programs',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          shadows: [
                            Shadow(
                                // bottomLeft
                                offset: Offset(-1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                // bottomRight
                                offset: Offset(1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                // topRight
                                offset: Offset(1.5, 1.5),
                                color: Colors.black),
                            Shadow(
                                // topLeft
                                offset: Offset(-1.5, 1.5),
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //meals
              InkWell(
                splashColor: Colors.red,
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (BuildContext context) {
                        return const Meals();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.overlay,
                    color: Colors.grey.shade900,
                  ),
                  child: Ink.image(
                    image: const AssetImage('images/app-meal-img.webp'),
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 3,
                    width: 400,
                    child: const Center(
                      child: Text(
                        'Meals',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          shadows: [
                            Shadow(
                                // bottomLeft
                                offset: Offset(-1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                // bottomRight
                                offset: Offset(1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                // topRight
                                offset: Offset(1.5, 1.5),
                                color: Colors.black),
                            Shadow(
                                // topLeft
                                offset: Offset(-1.5, 1.5),
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
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
