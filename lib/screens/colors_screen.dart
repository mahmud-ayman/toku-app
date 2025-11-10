import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/moudels/number_model.dart';
import 'package:toku/widgets/number_card.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({Key? key}) : super(key: key);
  static const String id = 'ColorsScreens';

  final List<DataModel> Colors = [
    DataModel(enName: 'red', jpName: 'Aka', sound: 'sounds/colors/red.wav'),
    DataModel(
        enName: 'green', jpName: 'Midori', sound: 'sounds/colors/green.wav'),
    DataModel(
        enName: 'yellow', jpName: 'Kiiro', sound: 'sounds/colors/yellow.wav'),
    DataModel(
        enName: 'black', jpName: 'Kuro', sound: 'sounds/colors/black.wav'),
    DataModel(
        enName: 'white', jpName: 'Shiro', sound: 'sounds/colors/white.wav'),
    DataModel(
        enName: 'brown', jpName: 'Chairo', sound: 'sounds/colors/brown.wav'),
    DataModel(
        enName: 'gray', jpName: 'Haiiro', sound: 'sounds/colors/gray.wav'),
    DataModel(
        enName: 'dusty yellow',
        jpName: 'okiiroboykero',
        sound: 'sounds/colors/dusty yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 70, 131, 161),
          title: const Text(
            ' Colors',
            style: TextStyle(color: Color.fromARGB(255, 60, 86, 113)),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 102, 126, 127),
        body: ListView.builder(
          itemCount: Colors.length,
          itemBuilder: (context, index) {
            return number_card(number: Colors[index]);
          },
          // number_card(number: number1),
        ));
  }
}
