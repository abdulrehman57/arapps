import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({super.key, this.cardChild, this.clr});
  Color? clr;
  Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
