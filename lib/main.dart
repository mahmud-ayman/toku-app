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
      initialRoute: Homescreen.id,
      routes: {
        Homescreen.id: (context) => Homescreen(),
        NumberScreen.id: (context) => NumberScreen(),
        FamilyMembers.id: (context) => FamilyMembers(),
        PhrasesScreen.id: (context) => PhrasesScreen(),
        ColorsScreen.id: (context) => ColorsScreen(),
      },
    );
  }
}
