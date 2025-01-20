import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_the_game/games/shatterpoint/search_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              'assets/images/shatterpoint.png',
              width: 300,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Expand the Galaxy!',
            style: GoogleFonts.jockeyOne(
              color: const Color.fromARGB(255, 250, 213, 3),
              fontSize: 28,
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
          // OutlinedButton.icon(
          //   onPressed: switchScreen,
          //   style: OutlinedButton.styleFrom(
          //     side: const BorderSide(
          //       color: Color.fromARGB(255, 250, 213, 3),
          //     ),
          //   ),
          //   icon: const Icon(
          //     Icons.arrow_right_alt,
          //     color: Color.fromARGB(255, 250, 213, 3),
          //   ),
          //   label: Text(
          //     'Test Your Skills',
          //     style: GoogleFonts.jockeyOne(
          //       color: const Color.fromARGB(255, 250, 213, 3),
          //       fontSize: 18,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
