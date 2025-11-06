import 'dart:math';

import 'package:flutter/material.dart';
import 'package:toku/moudels/number_model.dart';
import 'package:toku/widgets/number_card.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen({Key? key}) : super(key: key);
  static const String id = 'NumberScreen';
  final List<DataModel> numbers = [
    DataModel(
        numm: '1',
        sound: 'sounds/numbers/number_one_sound.mp3',
        jpName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png'),
    DataModel(
      numm: '2',
      image: "assets/images/numbers/number_two.png",
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'ni',
      enName: 'two',
    ),
    DataModel(
      numm: '3',
      image: "assets/images/numbers/number_three.png",
      sound: 'sounds/numbers/number_three_sound.mp3',
      jpName: 'san',
      enName: 'three',
    ),
    DataModel(
      numm: '4',
      image: "assets/images/numbers/number_four.png",
      sound: 'sounds/numbers/number_four_sound.mp3',
      jpName: 'shi',
      enName: 'four',
    ),
    DataModel(
      numm: '5',
      image: "assets/images/numbers/number_five.png",
      sound: 'sounds/numbers/number_five_sound.mp3',
      jpName: 'go',
      enName: 'five',
    ),
    DataModel(
      numm: '6',
      image: "assets/images/numbers/number_six.png",
      sound: 'sounds/numbers/number_six_sound.mp3',
      jpName: 'roku',
      enName: 'six',
    ),
    DataModel(
      numm: '7',
      image: "assets/images/numbers/number_seven.png",
      sound: 'sounds/numbers/number_seven_sound.mp3',
      jpName: 'nana',
      enName: 'seven',
    ),
    DataModel(
      numm: '8',
      image: "assets/images/numbers/number_eight.png",
      sound: 'sounds/numbers/number_eight_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
    ),
    DataModel(
      numm: '9',
      image: "assets/images/numbers/number_nine.png",
      sound: 'sounds/numbers/number_nine_sound.mp3',
      jpName: 'kyu',
      enName: 'nine',
    ),
    DataModel(
      numm: '10',
      image: "assets/images/numbers/number_ten.png",
      sound: 'sounds/numbers/number_ten_sound.mp3',
      jpName: 'juu',
      enName: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 137, 34),
          title: const Text(
            'Number',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 210, 184, 137),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return number_card(number: numbers[index]);
          },
          // number_card(number: number1),
        ));
  }
}
