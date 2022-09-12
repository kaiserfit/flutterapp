import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Programs());
}

class Programs extends StatelessWidget {
  const Programs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Programs'),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Center(
        child: Container(
          color: Colors.grey.shade500,
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              //kaiserfitclub
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade900,
                  padding: const EdgeInsets.only(bottom: 20),
                  elevation: 15.0,
                ),
                onPressed: () {},
                child: Column(
                  children: [
                    Image.asset(
                      'images/programs/kaiserfitClub.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'KaiserFit Club',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // color: const Color.fromARGB(0, 235, 139, 156),
      // child: const Center(child: Text('programs')),
    );
  }
}
