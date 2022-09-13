import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Meals());
}

class Meals extends StatelessWidget {
  const Meals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Meal Plans & Recipes'),
        backgroundColor: const Color.fromARGB(255, 166, 44, 43),
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
                      'images/covers/kaiserfit-cookbook.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'KaiserFit Cookbooks',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.red,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //meal plans for rapid fatloss
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
                      'images/meal/meal-plans-for-rapid-fat-loss.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    const Text(
                      'Meal Plans For Rapid Fat Loss',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //naughty clean eating
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
                      'images/meal/naughty-clean-eating.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    const Text(
                      'Naughty Clean Eating',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //Divine desserts
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
                      'images/meal/divine-desserts.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    const Text(
                      'Divine Desserts',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //superfood smoothies
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
                      'images/meal/superfood-smoothies.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    const Text(
                      'SuperFood Smoothies',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
