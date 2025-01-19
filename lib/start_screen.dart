import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:not_my_first_app/quiz_button.dart';
import 'package:not_my_first_app/search_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen,{super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/quiz-logo.png',
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.screen,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Get in the Zone!',
            style: GoogleFonts.audiowide(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchButton(),
          const SizedBox(
            height: 20,
          ),
          // const QuizButton(),
          OutlinedButton.icon(
            onPressed: switchScreen,
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
          ),
        ],
      ),
    );
  }
}
