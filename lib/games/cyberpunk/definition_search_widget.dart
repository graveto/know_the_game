import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_the_game/games/cyberpunk/data/questions.dart';

import 'models/quiz_question.dart';

class DefinitionSearchWidget extends StatefulWidget {
  const DefinitionSearchWidget({super.key});

  @override
  State<DefinitionSearchWidget> createState() => _DefinitionSearchWidgetState();
}

class _DefinitionSearchWidgetState extends State<DefinitionSearchWidget> {
  final TextEditingController _searchController = TextEditingController();
  List<QuizQuestion> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchController.removeListener(_onSearchChanged);
    super.dispose();
  }

  void _onSearchChanged() {
    final String searchTerm = _searchController.text.toLowerCase();
    if (searchTerm.isNotEmpty) {
      setState(() {
        _searchResults = _filterQuestions(searchTerm);
      });
    } else {
      setState(() {
        _searchResults = [];
      });
    }
  }

  List<QuizQuestion> _filterQuestions(String searchTerm) {
    return questions
        .where((question) =>
            question.text.toLowerCase().contains(searchTerm.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cortex Upload',
          style: TextStyle(color: Color.fromARGB(255, 198, 89, 181),),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 2, 25),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 2, 2, 25),
              Color.fromARGB(255, 72, 18, 64),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              style: const TextStyle(color: Color.fromARGB(255, 198, 89, 181),),
              decoration: const InputDecoration(
                labelText: 'Data Fragment',
                hintText: 'Enter a Data Fragment',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 198, 89, 181),
                ),
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 198, 89, 181),
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                _onSearchChanged();
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final question = _searchResults[index];
                  return ListTile(
                    title: Text(
                      question.text,
                      style: GoogleFonts.audiowide(
                        color: const Color.fromARGB(255, 198, 89, 181),
                        fontSize: 25,
                      ),
                    ),
                    subtitle: Text(
                      question.answers.first,
                      style: GoogleFonts.audiowide(
                        color: const Color.fromARGB(255, 198, 89, 181),
                        fontSize: 14,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
