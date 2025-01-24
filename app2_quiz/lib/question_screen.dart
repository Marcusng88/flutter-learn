import 'package:flutter/material.dart';

// widget class
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState(){
    return _QuestionScreenState();
  }
}

// state class
class _QuestionScreenState extends State<QuestionScreen>{
  @override
  Widget build( context) {
    
    return Text("question screen",style: TextStyle(color: Colors.black),);
  }
}