import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in_left.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in_right.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in_up.dart';
import 'animator.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? gender;
  double slidval = 30;
  double weight = 0,
      age = 0;
  double? score;
  bool male = false;
  bool female = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: const Text(" BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: const Color(0xff090E21),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              slidval = 30;
              weight = 0;
              age = 0;
              male = false;
              female = false;
            });
          },
              icon: const Icon(Icons.refresh, size: 20))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xff090E21),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                FadeInLeft(
                  child: Center(
                    child: Container(
                      height: 180,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff4C4F5E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                male = true;
                                female = false;
                              });
                            },
                            child: Text(
                              "♂",
                              style: TextStyle(
                                fontSize: 80,
                                color: (male)
                                    ? Colors.pink
                                    : Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white.withOpacity(0.85),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                FadeInRight(
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color(0xff4C4F5E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              female = true;
                              male = false;
                            });
                          },
                          child: Text(
                            "♀",
                            style: TextStyle(
                              fontSize: 80,
                              color: (female)
                                  ? Colors.pink
                                  : Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.85),
                          ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            FadeInRight(
              child: Container(
                width: 320,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xff26273A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Height",
                      style: TextStyle(
                          fontSize: 16, color: Colors.white.withOpacity(0.6)),
                    ),
                    Text.rich(
                      TextSpan(
                        text: slidval.toInt().toString(),
                        style: const TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                        children: [
                          TextSpan(
                            text: " cm",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 1,
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.pink,
                        disabledActiveTrackColor: Colors.grey[600],
                      ),
                      child: Slider(
                        value: slidval,
                        min: 30,
                        max: 230,
                        divisions: 200,
                        label: slidval.toInt().toString(),
                        onChanged: (double val) {
                          setState(
                                () {
                              slidval = val;
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInLeft(
                  child: Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xff26273A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Weight",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            text: weight.toInt().toString(),
                            style: const TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              // fontWeightchildren: [
                              //   TextSpan(
                              //     text: " kg",
                              //     style: TextStyle(
                              //       fontSize: 13,
                              //       color: Colors.white.withOpacity(0.6),
                              //     ),
                              //   ),
                              // ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            FloatingActionButton(
                              backgroundColor: const Color(0xff4C4F5E),
                              child: const Text(
                                "-",
                                style: TextStyle(fontSize: 30),
                              ),
                              onPressed: () {
                                setState(
                                      () {
                                    if (weight <= 0) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Color(0xff4C4F5E),
                                          content: Text(
                                            "Wrong Arguments",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      );
                                    } else {
                                      weight--;
                                    }
                                  },
                                );
                              },
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            FloatingActionButton(
                              backgroundColor: const Color(0xff4C4F5E),
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(
                                      () {
                                    weight++;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                FadeInRight(
                  child: Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xff26273A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            text: age.toInt().toString(),
                            style: const TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                            children: [
                              TextSpan(
                                text: " yr",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white.withOpacity(0.6),),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            FloatingActionButton(
                                backgroundColor: const Color(0xff4C4F5E),
                                child: const Text(
                                  "-",
                                  style: const TextStyle(fontSize: 30),
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (age <= 0) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Color(0xff4C4F5E),
                                          content: Text(
                                            "Wrong Arguments",
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      );
                                    } else {
                                      age--;
                                    }
                                  });
                                }),
                            const SizedBox(
                              width: 12,
                            ),
                            FloatingActionButton(
                                backgroundColor: const Color(0xff4C4F5E),
                                child: const Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            FadeInUp(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    child: const Text(
                      "CALCULATE",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffEB1555),
                    ),
                    onPressed: () {
                      if (weight > 0 && age > 0 && slidval > 30) {
                        score = (weight * 10000) / (slidval * slidval);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                Resultpage(
                                  age1: age,
                                  bmiscore: score,
                                  height1: slidval,
                                  weight1: weight,
                                ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Color(0xff4C4F5E),
                            content: Text(
                              "Wrong Arguments",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      }
                    },
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