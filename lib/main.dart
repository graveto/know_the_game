import 'package:flutter/material.dart';
import 'package:not_my_first_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 245, 236, 17),
            Color.fromARGB(255, 255, 193, 67)
          ])),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
