import 'package:adv/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});
  final Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          data['correct_answer'] == data['user_answer'],
          (data['question_index'] as int),
        ),
        const SizedBox(width: 25),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['question'].toString(),
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data['user_answer'].toString(),
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 202, 171, 252),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data['correct_answer'].toString(),
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 181, 254, 246),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
