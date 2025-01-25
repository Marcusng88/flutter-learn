import 'package:app2_quiz/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:app2_quiz/start_screen.dart';

// widget class
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// state class
class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';


  void switchScreen() {
    // when call setState in a state class , flutter will re-execute
    // the build method to update the screen
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              const Color.fromARGB(255, 49, 15, 107),
              Colors.deepPurple
            ])),
        child: activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
            : QuestionScreen(),
      ),
    ));
  }
}
