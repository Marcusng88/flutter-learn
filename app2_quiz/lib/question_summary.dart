import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: data['user_answer'] == data['correct_answer']
                          ? const Color.fromARGB(255, 124, 203, 239)
                          : const Color.fromARGB(255, 243, 129, 235),
                    ),
                    width: 30,
                    height: 30,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        data['question'] as String,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 224, 217, 236),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        data['user_answer'] as String,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 124, 203, 239)),
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        data['correct_answer'] as String,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 243, 129, 235)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
