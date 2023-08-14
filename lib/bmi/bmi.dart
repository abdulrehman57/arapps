import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi/calculate.dart';
import 'package:flutter_application_1/bmi/result.dart';
import 'package:flutter_application_1/bmi/widgets/iconcontent.dart';
import 'package:flutter_application_1/bmi/widgets/reuseablecard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { Male, Female }

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final activeColor = const Color(0xFF1D1E33);
  final inActiveColor = const Color(0xFF111328);

  Gender? selectGender;

  int height = 150;
  int weight = 50;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.Male;
                      });
                    },
                    child: ReuseableCard(
                      clr: selectGender == Gender.Male
                          ? activeColor
                          : inActiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.Female;
                      });
                    },
                    child: ReuseableCard(
                      clr: selectGender == Gender.Female
                          ? activeColor
                          : inActiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              clr: activeColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 17.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.w500,
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 250,
                    activeColor: Colors.pink,
                    inactiveColor: const Color(0xFF8D8E98),
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    clr: activeColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 17.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: const Color(0XFF4C4F5E),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (weight <= 20) {
                                    weight = 20;
                                  } else {
                                    weight--;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              backgroundColor: const Color(0XFF4C4F5E),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    clr: activeColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 17.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: const Color(0XFF4C4F5E),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (age <= 12) {
                                    age = 12;
                                  } else {
                                    age--;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              backgroundColor: const Color(0XFF4C4F5E),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              fixedSize: Size(MediaQuery.of(context).size.width, 80.0),
            ),
            onPressed: () {
              BMICalculation bmiCalculation =
                  BMICalculation(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(
                      bmi: bmiCalculation.calculateBMI(),
                      bmiResult: bmiCalculation.getResult(),
                      bmiMessage: bmiCalculation.getMessage(),
                    );
                  },
                ),
              );
            },
            child: const Text(
              'Calculate',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
