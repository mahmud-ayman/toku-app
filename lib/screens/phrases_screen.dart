import 'package:flutter/material.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  static const String id = 'phrasesScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 65, 55),
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'This is the Phrases Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
