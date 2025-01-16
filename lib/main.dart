import 'package:flutter/material.dart';

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
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Learn Flutter the Fun Way',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: null,
                style: OutlinedButton.styleFrom().copyWith(
                  side: WidgetStateProperty.all(
                    const BorderSide(color: Colors.white),
                  ),
                ),
                child: const Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
        ),
      ),
    ),
  );
}
