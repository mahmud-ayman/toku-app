import 'package:flutter/material.dart';
import 'package:toku/moudels/number_model.dart';
import 'package:toku/widgets/number_card.dart';

class phrasesScreen extends StatelessWidget {
  static const String id = 'phrasesScreen';
  phrasesScreen({Key? key}) : super(key: key);

  final List<DataModel> phrases = [
    DataModel(
        sound: "sounds/phrases/what_is_your_name.wav",
        jpName: "namae wa nandesu ka",
        enName: "What is your name?"),
    DataModel(
        sound: "sounds/phrases/where_are_you_going.wav",
        jpName: "Doko ni iku no",
        enName: "where are you going?"),
    DataModel(
        sound: "sounds/phrases/are_you_coming.wav",
        jpName: "Kimasu ka",
        enName: "are you coming?"),
    DataModel(
        sound: "sounds/phrases/yes_im_coming.wav",
        jpName: "hai watashi wa ktimasu",
        enName: "yes im coming"),
    DataModel(
        sound: "sounds/phrases/i_love_anime.wav",
        jpName: "watashi wa anime daisuki desu",
        enName: "i love anime"),
    DataModel(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        jpName: "goken wa ikagadesu ka",
        enName: "how are you feeling"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 112, 85, 123),
          title: const Text(
            'phrases',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 61, 52, 72),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return number_card(number: phrases[index]);
          },
          // number_card(number: number1),
        ));
  }
}
