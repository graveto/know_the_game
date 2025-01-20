import 'package:flutter/material.dart';
import 'package:know_the_game/games/cyberpunk/answer_button.dart';
import 'package:know_the_game/games/cyberpunk/data/questions.dart';
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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 2, 25),
          title: const Text(
            'System Diagnostics',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 2, 2, 25),
                Color.fromARGB(255, 72, 18, 64),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.audiowide(
                  color: Colors.white,
                  fontSize: 25,
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
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.refresh),
                label: Text(
                  'Leave Matrix',
                  style: GoogleFonts.audiowide(
                    color: const Color.fromARGB(255, 230, 200, 253),
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
