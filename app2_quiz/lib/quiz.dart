import 'package:app2_quiz/data/questions.dart';
import 'package:app2_quiz/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:app2_quiz/start_screen.dart';
import 'package:app2_quiz/results_screen.dart';

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
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    // when call setState in a state class , flutter will re-execute
    // the build method to update the screen
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void switchToRestartScreen(){
    setState(() {
      activeScreen = 'start-screen';
      selectedAnswers=[];
      
    });
  }
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(chosenAnswer: selectedAnswers,restartQuiz: switchToRestartScreen,);
    }
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
            child: screenWidget),
      ),
    );
  }
}
