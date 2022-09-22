import 'package:flutter/material.dart';

void main() {
  runApp(const KaiserFitClub());
}

class KaiserFitClub extends StatelessWidget {
  const KaiserFitClub({super.key});
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
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
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
                InkWell(
                  onTap: () {},
                  splashColor: Colors.red,
                  child: Image.asset(
                    'images/programs/kaiserfitclub/cookbook/1.webp',
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
}
