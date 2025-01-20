import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 209, 137, 85),
        foregroundColor: const Color.fromARGB(255, 25, 35, 1),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Color.fromARGB(255, 50, 66, 12),
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.left,
        style: GoogleFonts.syneMono(
          color: const Color.fromARGB(255, 25, 35, 1),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
