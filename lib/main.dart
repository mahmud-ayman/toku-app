import 'package:flutter/material.dart';
import 'package:toku/screens/Family_members.dart';
import 'package:toku/screens/Member_screen.dart';
import 'package:toku/screens/homeScreen.dart';
import 'package:toku/screens/phrases_screen.dart';

void main() {
  runApp(tokuApp());
}

class tokuApp extends StatelessWidget {
  const tokuApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homescreen(),
      initialRoute: Homescreen.id,
      routes: {
        Homescreen.id: (context) => Homescreen(),
        MemberScreen.id: (context) => MemberScreen(),
        FamilyMembers.id: (context) => FamilyMembers(),
        FamilyMembers.id: (context) => PhrasesScreen(),
      },
    );
  }
}
