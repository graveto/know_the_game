import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:not_my_first_app/cyberpunk/quiz.dart' as cyberpunk;
import 'package:not_my_first_app/halo/quiz.dart' as halo;

class GameGallery extends StatelessWidget {
  const GameGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const cyberpunk.Quiz(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                icon: const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
                label: Text(
                  'Cyberpunk',
                  style: GoogleFonts.audiowide(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const halo.Quiz(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                icon: const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
                label: Text(
                  'Halo',
                  style: GoogleFonts.audiowide(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
