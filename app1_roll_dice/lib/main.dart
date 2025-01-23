import 'package:flutter/material.dart';
import 'package:app1_roll_dice/gradient_container.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 49, 1, 125),  Color.fromARGB(255, 90, 37, 181)),
      ),
    ),
  );
}

