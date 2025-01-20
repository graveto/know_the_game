import 'package:flutter/material.dart';

import 'package:not_my_first_app/shatterpoint/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:not_my_first_app/shatterpoint/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    final ratio = (numCorrectQuestions / numTotalQuestions) * 100;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You hacked $numCorrectQuestions out of $numTotalQuestions firewalls!',
              style: GoogleFonts.jockeyOne(
                color: const Color.fromARGB(255, 209, 137, 85),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              ratio > 75 ? 'Halo awaits you!' : 'The grunts will get you!',
              style: GoogleFonts.jockeyOne(
                color: const Color.fromARGB(255, 209, 137, 85),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                iconColor: const Color.fromARGB(255, 209, 137, 85),
              ),
              icon: const Icon(Icons.refresh),
              label: Text('Get Back to Training!',
                style: GoogleFonts.jockeyOne(
                  color: const Color.fromARGB(255, 209, 137, 85),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
            )
          ],
        ),
      ),
    );
  }
}