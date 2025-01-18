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
        backgroundColor: const Color.fromARGB(
          75,
          221,
          32,
          39,
        ),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Colors.red,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.left,
        style: GoogleFonts.audiowide(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
