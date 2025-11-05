import 'dart:math';

import 'package:flutter/material.dart';
import 'package:toku/moudels/number_model.dart';
import 'package:toku/widgets/number_card.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen({Key? key}) : super(key: key);
  static const String id = 'MemberScreen';
  Number number1 = Number(
      sound: 'number_one_sound.mp3',
      jpName: 'ichi',
      enName: 'one',
      image: 'assets/images/numbers/number_one.png');
  Number number2 = Number(
    image: "assets/images/numbers/number_two.png",
    sound: 'number_two_sound.mp3',
    jpName: 'ni',
    enName: 'two',
  );
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
        body: ListView(
          children: [
            number_card(number: number1),
            number_card(number: number2),

            // number_card(number: number1),
          ],
        ));
  }
}
