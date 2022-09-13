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

              //Dream Body in 90
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
                      'images/covers/dream-body.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Dream Body in 90',
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

              //Beach Body
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
                      'images/covers/beach-body.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Beach Body Blueprint',
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

              //Home Workouts
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
                      'images/covers/home-workouts.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Flexible(
                          child: Text(
                            'Home Workouts for Rapid Fat Loss',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
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

              //Meal Plan Masterclass
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
                      'images/covers/meal-plan.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Flexible(
                          child: Text(
                            'Meal Plan Masterclass',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
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

              //Goddess Blueprint
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
                      'images/programs/goddess-blueprint.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Flexible(
                          child: Text(
                            'Goddess Blueprint',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
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

              //Fat loss food hacks
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
                      'images/programs/foodhacks.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Flexible(
                          child: Text(
                            'Fat Loss Food Hacks',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
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

              //Forever Fatloss
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
                      'images/programs/foreverFL.webp',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Flexible(
                          child: Text(
                            'Forever Fat Loss',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
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
            ],
          ),
        ),
      ),
      // color: const Color.fromARGB(0, 235, 139, 156),
      // child: const Center(child: Text('programs')),
    );
  }
}
