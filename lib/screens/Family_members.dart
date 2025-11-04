import 'package:flutter/material.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);
  static const String id = 'familyMembers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 65, 55),
        title: Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'This is the Family Members Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
