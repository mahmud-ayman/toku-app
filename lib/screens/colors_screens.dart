import 'package:flutter/material.dart';

class ColorsScreens extends StatelessWidget {
  const ColorsScreens({Key? key}) : super(key: key);
  static const String id = 'ColorsScreens';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 65, 55),
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'This is the Colors Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
