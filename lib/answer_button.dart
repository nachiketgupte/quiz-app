import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  @override
  const AnswerButton({super.key, required this.answerText, required Function() this.onTap});

  final String answerText;
  final void Function() onTap;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 0, 91),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10)
      ),      
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
