import 'package:dice_roller/custom_text.dart';
import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 227, 58, 205),
              Color.fromARGB(255, 2, 250, 238),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(child: DiceRoller()));
  }
}
