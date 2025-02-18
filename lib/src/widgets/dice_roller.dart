import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNumber = 2;
  final randomizer = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            'assets/images/dice-$currentDiceNumber.png',
            width: 400
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
                padding: EdgeInsets.only(top: 20)
            ),
            child: const Text('Roll Dice')
        )
      ],
    );
  }

  rollDice() {
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

}