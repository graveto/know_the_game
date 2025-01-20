import 'package:flutter/material.dart';
import 'package:know_the_game/games/halo/answer_button.dart';
import 'package:know_the_game/games/halo/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
    required this.onRestart,
  });

  final void Function(String answer) onSelectAnswer;

  final void Function() onRestart;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.syneMono(
                color: const Color.fromARGB(255, 209, 137, 85),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AnswerButton(
                      answerText: answer,
                      onTap: () {
                        answerQuestion(answer);
                      },
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              },
            ),
            TextButton.icon(
              onPressed: widget.onRestart,
              style: TextButton.styleFrom(
              ),
              icon: const Icon(
                Icons.refresh,
                color: Color.fromARGB(255, 209, 137, 85),
              ),
              label: Text(
                'Leave Training',
                style: GoogleFonts.audiowide(
                  color: const Color.fromARGB(255, 209, 137, 85),
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
