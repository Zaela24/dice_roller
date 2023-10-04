import 'dart:math';

import 'package:flutter/material.dart';

// saves memory, doesn't recreate Random() each time rollDice() is called
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceFace = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      diceFace = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceFace,
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
