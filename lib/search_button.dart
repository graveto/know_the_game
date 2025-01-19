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
        foregroundColor: Colors.white,
        side: const BorderSide(
          color: Colors.white,
        ),
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(
        'Learn Kung Fu',
        style: GoogleFonts.audiowide(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
