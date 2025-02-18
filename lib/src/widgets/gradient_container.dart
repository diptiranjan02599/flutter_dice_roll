import 'package:flutter/material.dart';
import 'package:flutter_dice_roll/src/widgets/dice_roller.dart';
import 'package:flutter_dice_roll/src/widgets/styled_text.dart';

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  const GradientContainer({super.key, required this.color1, required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15), // Optional: rounded corners
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }



}