import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeComp();
}

class HomeComp extends State<Home> {
  int _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(_counter.toString()),
            Container(
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
              child: Material(
                borderRadius: BorderRadius.circular(7),
                color: Colors.transparent,
                elevation: 10,
                child: InkWell(
                  splashColor: Colors.grey.shade100,

                  onTap: () {
                    setState(() {
                      _counter = 100;
                    });
                  },
                  // child: Image.asset('images/programs/kaiserfitClub.webp'),
                  child: Column(
                    children: [
                      Ink.image(
                        image: const AssetImage(
                            'images/programs/kaiserfitClub.webp'),
                        fit: BoxFit.fitHeight,
                        height: 200,
                        width: 400,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "KaiserFit Club",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
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
              child: Material(
                borderRadius: BorderRadius.circular(7),
                color: Colors.transparent,
                elevation: 10,
                child: InkWell(
                  splashColor: Colors.grey.shade100,

                  onTap: () {
                    setState(() {
                      _counter = 100;
                    });
                  },
                  // child: Image.asset('images/programs/kaiserfitClub.webp'),
                  child: Column(
                    children: [
                      Ink.image(
                        image:
                            const AssetImage('images/programs/dream-body.webp'),
                        fit: BoxFit.fitHeight,
                        height: 200,
                        width: 400,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Dream Body in 90",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
