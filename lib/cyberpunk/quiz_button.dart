import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:not_my_first_app/cyberpunk/questions_screen.dart';
import 'package:not_my_first_app/cyberpunk/definition_search_widget.dart'; // Import the DefinitionSearchWidget
import 'package:not_my_first_app/cyberpunk/quiz.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({super.key, required this.onSelectAnswer, required this.onRestart});

  final void Function(String answer) onSelectAnswer;
  final void Function() onRestart;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => QuestionsScreen(onSelectAnswer: onSelectAnswer, onRestart: onRestart)),
        );
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(
          color: Colors.white,
        ),
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(
        'I Know Kung Fu',
        style: GoogleFonts.audiowide(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
