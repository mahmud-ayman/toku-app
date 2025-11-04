import 'package:flutter/material.dart';
import 'package:toku/screens/Member_screen.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/widgets/categories.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key});
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
        body: Column(
          children: [
            categories(
              onTap: () {
                Navigator.pushNamed(context, MemberScreen.id);
              },
              color: const Color.fromARGB(255, 255, 137, 34),
              text: 'Members',
            ),
            categories(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return NumberScreen();
                // }))
                // ;
                Navigator.pushNamed(context, MemberScreen.id);
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
                Navigator.pushNamed(context, 'phrasesScreen');
              },
              color: Colors.purple,
              text: 'phrases',
            ),
          ],
        ));
  }
}
