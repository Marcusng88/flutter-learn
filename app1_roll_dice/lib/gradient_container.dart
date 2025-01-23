import 'package:app1_roll_dice/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:app1_roll_dice/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.blue({super.key})
      : color1 = const Color.fromARGB(255, 1, 38, 106),
        color2 = const Color.fromARGB(255, 3, 99, 177);
  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignment,
              end: endAlignment),
        ),
        child: Center(
          child: DiceRoller()
        ));
  }
}
