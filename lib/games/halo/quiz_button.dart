import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_the_game/games/halo//questions_screen.dart';
import 'package:know_the_game/games/halo//test_widget.dart';
import 'definition_search_widget.dart'; // Import the DefinitionSearchWidget

class QuizButton extends StatelessWidget {
  const QuizButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              // builder: (context) => const TestWidget()),
              builder: (context) => const TestWidget()),
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
