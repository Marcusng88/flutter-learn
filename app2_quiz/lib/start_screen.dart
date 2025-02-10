import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            height: 250,
            width: 250,
            image: AssetImage('assets/images/quiz-logo.png'),
            color: const Color.fromARGB(134, 255, 255, 255),
          ),
          SizedBox(height: 20),
          Text(
            "Learn Flutter the fun way !",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.arrow_right_alt),
              label: Text(
                "Start Quiz",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
