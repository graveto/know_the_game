import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'definition_search_widget.dart'; // Import the DefinitionSearchWidget

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const DefinitionSearchWidget()),
        );
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Color.fromARGB(255, 209, 137, 85),
        ),
      ),
      icon: const Icon(
        Icons.arrow_right_alt,
        color: Color.fromARGB(255, 209, 137, 85),
      ),
      label: Text(
        'Report for Training',
        style: GoogleFonts.audiowide(
          color: const Color.fromARGB(255, 209, 137, 85),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
