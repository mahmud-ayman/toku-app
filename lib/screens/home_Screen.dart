import 'package:flutter/material.dart';
import 'package:toku/screens/Family_members.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/phrases_screen.dart';
import 'package:toku/widgets/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});
  static const String id = 'Homescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 92, 65, 55),
          title: Text(
            'Toku App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 132, 92, 49),
              Color.fromARGB(255, 44, 140, 108),
              Color.fromARGB(255, 103, 173, 155),
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              categories(
                onTap: () {
                  Navigator.pushNamed(context, NumberScreen.id);
                },
                color: const Color.fromARGB(255, 255, 137, 34),
                text: 'Number',
              ),
              categories(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return NumberScreen();
                  // }))
                  // ;
                  Navigator.pushNamed(context, FamilyMembers.id);
                },
                color: Colors.green,
                text: 'Family Members',
              ),
              categories(
                onTap: () {
                  Navigator.pushNamed(context, ColorsScreen.id);
                },
                color: Colors.blue,
                text: 'Colors',
              ),
              categories(
                onTap: () {
                  Navigator.pushNamed(context, phrasesScreen.id);
                },
                color: Colors.purple,
                text: 'phrases',
              ),
            ],
          ),
        ));
  }
}
