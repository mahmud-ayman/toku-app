import 'package:flutter/material.dart';
import 'package:toku/screens/Family_members.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/home_Screen.dart';
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
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        NumberScreen.id: (context) => NumberScreen(),
        FamilyMembers.id: (context) => FamilyMembers(),
        phrasesScreen.id: (context) => phrasesScreen(),
        ColorsScreen.id: (context) => ColorsScreen(),
      },
    );
  }
}
