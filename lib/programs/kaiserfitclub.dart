import 'package:flutter/material.dart';
import 'dart:math';
// import 'package:lottie/lottie.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
void main() {
  runApp(const KaiserFitClub());
}

class KaiserFitClub extends StatefulWidget {
  const KaiserFitClub({super.key});

  @override
  State<KaiserFitClub> createState() => _KaiserFitClubState();
}

class _KaiserFitClubState extends State<KaiserFitClub> {
  String title = 'title';
  int month = 1;
  int min = 1;
  int max = 6;
  bool genSuccess = false;
  int cookbook = 1;
  int mealplan = 1;
  int shoppinglist = 1;
  int workout = 1;
  bool loading = false;
  String imgpath = 'images/launcher_icon.png';
  final List cookingVideos = [
    {'month'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
          Text(
            'KaiserFit Club',
            style: TextStyle(
              fontFamily: 'OpenSansBold',
              fontSize: 22.0,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.star_border_purple500_outlined,
            color: Colors.red,
            size: 30.0,
          ),
        ]),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Colors.lightBlueAccent],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your onPressed code here!
                    setState(() {
                      if (month > 1) {
                        resetIndexes();
                        month--;
                      }
                    });
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<CircleBorder>(
                          const CircleBorder(
                              side: BorderSide(color: Colors.transparent)))),
                  child: const Icon(Icons.navigate_before_rounded),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Month ${month.toString()}',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      fontFamilyFallback: <String>[
                        'Noto Sans CJK SC',
                        'Noto Color Emoji'
                      ]),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (month < 14) {
                        resetIndexes();
                        month++;
                      }
                    });
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<CircleBorder>(
                          const CircleBorder(
                              side: BorderSide(color: Colors.transparent)))),
                  child: const Icon(Icons.navigate_next_rounded),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Monthly E-Books",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 160,
              padding: const EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  (loading == false)
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.red,
                            child: Image.asset(
                              'images/programs/kaiserfitclub/cookbook/$cookbook.webp',
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/animated/prepare.gif',
                            height: 100,
                            width: 100,
                          ),
                        ),
                  // Lottie.network(
                  //     'https://assets5.lottiefiles.com/packages/lf20_jbt4j3ea.json'),
                  const SizedBox(
                    width: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.red,
                      child: Image.asset(
                        'images/programs/kaiserfitclub/mealplans/$mealplan.webp',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.red,
                      child: Image.asset(
                        'images/programs/kaiserfitclub/shoppinglist/$shoppinglist.webp',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Monthly Cooking Videos",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            Container(
              height: 160,
              padding: const EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  (loading == false)
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.red,
                            child: Image.asset(
                              'images/programs/kaiserfitclub/cookingvideos/month-$month-1.webp',
                              height: 100,
                              width: 150,
                            ),
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/animated/prepare.gif',
                            height: 100,
                            width: 100,
                          ),
                        ),
                  // Lottie.network(
                  //     'https://assets5.lottiefiles.com/packages/lf20_jbt4j3ea.json'),
                  const SizedBox(
                    width: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.red,
                      child: Image.asset(
                        'images/programs/kaiserfitclub/cookingvideos/month-$month-2.webp',
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.red,
                      child: Image.asset(
                        'images/programs/kaiserfitclub/cookingvideos/month-$month-3.webp',
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Monthly Workout Videos",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.red,
                child: Image.asset(
                  'images/programs/kaiserfitclub/workout/$workout.webp',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'images/programs/kfcBanner.webp',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void resetIndexes() {
    cookbook = getRandomNum();
    mealplan = getRandomNum();
    shoppinglist = getRandomNum();
    workout = getRandomNum();
    // mealplan = 1;
    // cookbook = 1;
    // shoppinglist = 1;
    // workout = 1;
    // while ((cookbook == shoppinglist || cookbook == mealplan) &&
    //     (mealplan == shoppinglist || mealplan == workout)) {
    //   cookbook = getRandomNum();
    //   mealplan = getRandomNum();
    //   shoppinglist = getRandomNum();
    //   workout = getRandomNum();
    // }
  }

  int getRandomNum() {
    Random rnd;
    rnd = Random();
    int r = min + rnd.nextInt(max - min);
    return r;
  }
}
