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
            // borderRadius: BorderRadius.circular(7),

            color: Colors.grey.shade900,
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: const [0.1, 0.6, 0.7, 1],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.grey.shade900,
                Colors.grey.shade800,
                Colors.grey.shade700,
                Colors.grey.shade700,
              ],
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(10),
            shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  //kaiser burner
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/products/kaiser-burner.webp',
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Weight Loss',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Kaiser Burner',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor:
                                      const Color.fromARGB(255, 197, 43, 32),
                                  // primary:
                                  //     const Color.fromARGB(255, 197, 43, 32),
                                  // onPrimary: Colors.white,
                                  // onSurface: Colors.grey,
                                  elevation: 15.0,
                                  shape: RoundedRectangleBorder(
                                    // side: const BorderSide(
                                    //     width: 2,
                                    //     color: Colors.grey,
                                    //     style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Learn more',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  //dreamy lean
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/products/dreamy-lean.webp',
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Weight Loss',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Dreamy Lean',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor:
                                      const Color.fromARGB(255, 197, 43, 32),
                                  // primary:
                                  //     const Color.fromARGB(255, 197, 43, 32),
                                  // onPrimary: Colors.white,
                                  // onSurface: Colors.grey,
                                  elevation: 15.0,
                                  shape: RoundedRectangleBorder(
                                    // side: const BorderSide(
                                    //     width: 2,
                                    //     color: Colors.grey,
                                    //     style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Learn more',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  //collagen matrix
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/products/collagen-matrix.webp',
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Health',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Collagen Matrix',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor:
                                      const Color.fromARGB(255, 197, 43, 32),
                                  // primary:
                                  //     const Color.fromARGB(255, 197, 43, 32),
                                  // onPrimary: Colors.white,
                                  // onSurface: Colors.grey,
                                  elevation: 15.0,
                                  shape: RoundedRectangleBorder(
                                    // side: const BorderSide(
                                    //     width: 2,
                                    //     color: Colors.grey,
                                    //     style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Learn more',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  //vita greens
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/products/vita-greens.webp',
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Health',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Vita Greens',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor:
                                      const Color.fromARGB(255, 197, 43, 32),
                                  // primary:
                                  //     const Color.fromARGB(255, 197, 43, 32),
                                  // onPrimary: Colors.white,
                                  // onSurface: Colors.grey,
                                  elevation: 15.0,
                                  shape: RoundedRectangleBorder(
                                    // side: const BorderSide(
                                    //     width: 2,
                                    //     color: Colors.grey,
                                    //     style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Learn more',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  //cleanse-complex
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/products/cleanse-complex.webp',
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Health',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Cleanse Complex',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor:
                                      const Color.fromARGB(255, 197, 43, 32),
                                  // primary:
                                  //     const Color.fromARGB(255, 197, 43, 32),
                                  // onPrimary: Colors.white,
                                  // onSurface: Colors.grey,
                                  elevation: 15.0,
                                  shape: RoundedRectangleBorder(
                                    // side: const BorderSide(
                                    //     width: 2,
                                    //     color: Colors.grey,
                                    //     style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Learn more',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  //neuro-drive
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/products/neuro-drive.webp',
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Health',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Neuro Drive',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor:
                                      const Color.fromARGB(255, 197, 43, 32),
                                  // primary:
                                  //     const Color.fromARGB(255, 197, 43, 32),
                                  // onPrimary: Colors.white,
                                  // onSurface: Colors.grey,
                                  elevation: 15.0,
                                  shape: RoundedRectangleBorder(
                                    // side: const BorderSide(
                                    //     width: 2,
                                    //     color: Colors.grey,
                                    //     style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Learn more',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  //inner-restore
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/products/inner-restore.webp',
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Health',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Inner Restore',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 28,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor:
                                      const Color.fromARGB(255, 197, 43, 32),
                                  // primary:
                                  //     const Color.fromARGB(255, 197, 43, 32),
                                  // onPrimary: Colors.white,
                                  // onSurface: Colors.grey,
                                  elevation: 15.0,
                                  shape: RoundedRectangleBorder(
                                    // side: const BorderSide(
                                    //     width: 2,
                                    //     color: Colors.grey,
                                    //     style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Learn more',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
