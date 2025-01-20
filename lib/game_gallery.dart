import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_the_game/games/cyberpunk/quiz.dart' as cyberpunk;
import 'package:know_the_game/games/halo/quiz.dart' as halo;
import 'package:know_the_game/games/shatterpoint/quiz.dart' as shatterpoint;
import 'package:know_the_game/games/unlimited/quiz.dart' as unlimited;
import 'package:know_the_game/games/gundamcg/quiz.dart' as gundamcg;
import 'package:know_the_game/games/gundam_assemble/quiz.dart' as assemble;

import 'package:know_the_game/data/games.dart';

class GameGallery extends StatelessWidget {
  const GameGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final importPath = games[0].importPath;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [...games.map((game) {
              return OutlinedButton.icon(
                onPressed: () {
                  switch (game.importPath) {
                    case 'cyberpunk':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const cyberpunk.Quiz(),
                        ),
                      );
                      break;
                    case 'halo':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const halo.Quiz(),
                        ),
                      );
                    case 'shatterpoint':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const shatterpoint.Quiz(),
                        ),
                      );
                      break;
                    case 'unlimited':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const unlimited.Quiz(),
                        ),
                      );
                      break;
                    case 'gundamcg':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const gundamcg.Quiz(),
                        ),
                      );
                      break;
                    case 'assemble':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const assemble.Quiz(),
                        ),
                      );
                      break;
                    default:
                      throw Exception('Unknown game import path: ${game.importPath}');
                  }
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
                  game.title,
                  style: GoogleFonts.audiowide(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            })
          ]
            // children: [
            //   OutlinedButton.icon(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const cyberpunk.Quiz(),
            //         ),
            //       );
            //     },
            //     style: OutlinedButton.styleFrom(
            //       foregroundColor: Colors.white,
            //       side: const BorderSide(
            //         color: Colors.white,
            //       ),
            //     ),
            //     icon: const Icon(
            //       Icons.arrow_right_alt,
            //       color: Colors.white,
            //     ),
            //     label: Text(
            //       'Cyberpunk',
            //       style: GoogleFonts.audiowide(
            //         color: Colors.white,
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            //   OutlinedButton.icon(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const halo.Quiz(),
            //         ),
            //       );
            //     },
            //     style: OutlinedButton.styleFrom(
            //       foregroundColor: Colors.white,
            //       side: const BorderSide(
            //         color: Colors.white,
            //       ),
            //     ),
            //     icon: const Icon(
            //       Icons.arrow_right_alt,
            //       color: Colors.white,
            //     ),
            //     label: Text(
            //       'Halo',
            //       style: GoogleFonts.audiowide(
            //         color: Colors.white,
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            //   OutlinedButton.icon(
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const shatterpoint.Quiz(),
            //         ),
            //       );
            //     },
            //     style: OutlinedButton.styleFrom(
            //       foregroundColor: Colors.white,
            //       side: const BorderSide(
            //         color: Colors.white,
            //       ),
            //     ),
            //     icon: const Icon(
            //       Icons.arrow_right_alt,
            //       color: Colors.white,
            //     ),
            //     label: Text(
            //       'Shatterpoint',
            //       style: GoogleFonts.audiowide(
            //         color: Colors.white,
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ],
          ),
        ),
      ),
    );
  }
}
