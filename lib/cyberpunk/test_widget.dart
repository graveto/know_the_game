import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

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
      body: const Text('data'),
    );
  }
}
