import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_the_game/games/cyberpunk/quiz_button.dart';
import 'package:know_the_game/games/cyberpunk/search_button.dart';
import 'package:know_the_game/games/cyberpunk/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen,
      {super.key, required this.onSelectAnswer, required this.onRestart});

  final void Function() switchScreen;

  final void Function(String answer) onSelectAnswer;

  final void Function() onRestart;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/cyberpunk.png',
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
          QuizButton(
            onSelectAnswer: onSelectAnswer,
            onRestart: onRestart,
          ),
        ],
      ),
    );
  }
}
