import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi/bmi.dart';
import 'package:flutter_application_1/destini/storyapp.dart';
import 'package:flutter_application_1/dicee.dart';
import 'package:flutter_application_1/magic8ball.dart';
import 'package:flutter_application_1/model/appModel.dart';
import 'package:flutter_application_1/piano.dart';
import 'package:flutter_application_1/quiz/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select Game',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AR Game'),
          centerTitle: true,
          backgroundColor: Colors.red.shade600,
        ),
        body: const ARApp(),
      ),
    );
  }
}

class ARApp extends StatefulWidget {
  const ARApp({Key? key}) : super(key: key);

  @override
  State<ARApp> createState() => _ARAppState();
}

class _ARAppState extends State<ARApp> {
  List apps = [
    const Dicee(),
    const Magic8Ball(),
    const PianoScreen(),
    const QuizApp(),
    const StoryApp(),
    const BMI()
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisSpacing: 2,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: List.generate(appList.length, (index) {
          APPModel appModel = appList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return apps[index];
                  },
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Image(
                    image: AssetImage(appModel.imageUrl!),
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                  ),
                  Text(
                    appModel.title!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
