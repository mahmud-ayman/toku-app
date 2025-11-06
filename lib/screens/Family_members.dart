import 'package:flutter/material.dart';
import 'package:toku/moudels/number_model.dart';
import 'package:toku/widgets/number_card.dart';

class FamilyMembers extends StatelessWidget {
  static const String id = 'familyMembers';
  FamilyMembers({Key? key}) : super(key: key);

  final List<DataModel> family = [
    DataModel(
        sound: 'sounds/family_members/father.wav',
        jpName: 'chichi',
        enName: 'father',
        image: 'assets/images/family_members/family_father.png'),
    DataModel(
      image: "assets/images/family_members/family_mother.png",
      sound: 'sounds/family_members/mother.wav',
      jpName: 'haha',
      enName: 'mother',
    ),
    DataModel(
      image: "assets/images/family_members/family_grandfather.png",
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'ojiisan',
      enName: 'grand father',
    ),
    DataModel(
      image: "assets/images/family_members/family_grandmother.png",
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'sobo',
      enName: 'grand mother',
    ),
    DataModel(
      image: "assets/images/family_members/family_older_brother.png",
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'ani',
      enName: 'older brother',
    ),
    DataModel(
      image: "assets/images/family_members/family_older_sister.png",
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'ane',
      enName: 'older sister',
    ),
    DataModel(
      image: "assets/images/family_members/family_son.png",
      sound: 'sounds/family_members/son.wav',
      jpName: 'hachi',
      enName: 'son',
    ),
    DataModel(
      image: "assets/images/family_members/family_younger_brother.png",
      sound: 'sounds/family_members/younger brohter.wav',
      jpName: 'otouto',
      enName: 'younger brother',
    ),
    DataModel(
      image: "assets/images/family_members/family_younger_sister.png",
      sound: 'sounds/family_members/younger sister.wav',
      jpName: ' toto',
      enName: 'younger sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 121, 184, 12),
          title: const Text(
            'Family Members',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 210, 184, 137),
        body: ListView.builder(
          itemCount: family.length,
          itemBuilder: (context, index) {
            return number_card(number: family[index]);
          },
          // number_card(number: number1),
        ));
  }
}
