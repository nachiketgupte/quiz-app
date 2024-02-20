import 'package:flutter/material.dart';
import 'package:adv/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'Question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('You answered X out of Y questions correctly'),
          const SizedBox(width: 30),
          const Text('List of answers and questions'),
          TextButton(onPressed: () {}, child: const Text('Restart Quiz')),
        ],
      ),
    );
  }
}
