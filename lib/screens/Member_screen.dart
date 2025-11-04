import 'package:flutter/material.dart';

class MemberScreen extends StatelessWidget {
  MemberScreen({Key? key}) : super(key: key);
  static const String id = 'MemberScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 65, 55),
        title: Text(
          'Members',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'This is the Member Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
