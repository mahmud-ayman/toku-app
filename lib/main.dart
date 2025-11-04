import 'package:flutter/material.dart';

void main() {
  runApp(tokuApp());
}

class tokuApp extends StatelessWidget {
  const tokuApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toku App'),
        ),
        body: Center(
          child: Text('Welcome to Toku App!'),
        ),
      ),
    );
  }
}
