import 'dart:math';

import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDice = 1;
  int rightDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade600,
      appBar: AppBar(
        title: const Text("Dicee Game"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                    rightDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dicee/dice$leftDice.png'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDice = Random().nextInt(6) + 1;
                    leftDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dicee/dice$rightDice.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
