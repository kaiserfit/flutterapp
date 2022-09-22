import 'package:flutter/material.dart';
import 'dart:math';

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
  int cookbook = 1;
  int mealplan = 1;
  int shoppinglist = 1;
  bool loading = true;
  String imgpath = 'images/launcher_icon.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            cookbook.toString() +
                ', ' +
                mealplan.toString() +
                ', ' +
                shoppinglist.toString(),
            style: const TextStyle(
              fontFamily: 'OpenSansBold',
              fontSize: 22.0,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.star_border_purple500_outlined,
            color: Colors.red,
            size: 30.0,
          ),
        ]),
        backgroundColor: Colors.grey.shade900,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    resetIndexes();
                  });
                },
                backgroundColor: Colors.green,
                child: const Icon(Icons.navigate_before_rounded),
              ),
              Text('Month, ${month.toString()}'),
              FloatingActionButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                backgroundColor: Colors.green,
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
                (loading == true)
                    ? InkWell(
                        onTap: () {},
                        splashColor: Colors.red,
                        child: Image.asset(
                          'images/programs/kaiserfitclub/cookbook/1.webp',
                          fit: BoxFit.contain,
                        ),
                      )
                    : Hero(
                        tag: imgpath,
                        child: Image.asset(
                          imgpath,
                          height: 50,
                          width: 50,
                        ),
                      ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.red,
                  child: Image.asset(
                    'images/programs/kaiserfitclub/mealplans/2.webp',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.red,
                  child: Image.asset(
                    'images/programs/kaiserfitclub/cookbook/3.webp',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Image.asset(
            'images/programs/kfcBanner.webp',
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.red,
            child: Image.asset(
              'images/programs/kfcBanner.webp',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }

  void resetIndexes() {
    mealplan = 1;

    while ((cookbook == shoppinglist || cookbook == mealplan) &&
        mealplan == shoppinglist) {
      cookbook = getRandomNum();
      mealplan = getRandomNum();
      shoppinglist = getRandomNum();
    }
  }

  int getRandomNum() {
    Random rnd;
    rnd = Random();
    int r = min + rnd.nextInt(max - min);
    return r;
  }
}
