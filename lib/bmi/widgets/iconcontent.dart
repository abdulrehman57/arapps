import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({super.key, this.icon, this.title});

  IconData? icon;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          title.toString(),
          style: const TextStyle(
            color: Colors.white60,
            fontSize: 17.0,
            letterSpacing: 1.0,
          ),
        ),
      ],
    );
  }
}
