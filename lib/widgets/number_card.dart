import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/moudels/number_model.dart';

class number_card extends StatelessWidget {
  number_card({
    required this.number,
    Key? key,
  }) : super(key: key);
  DataModel number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3, top: 2, left: 3, right: 3),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Colors.brown, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: const Color.fromARGB(255, 255, 223, 186),
      ),
      height: 85,
      child: Row(
        children: [
          Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 217, 175, 84),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Image.asset(number.image)),
          const Spacer(flex: 1),
          Column(
            children: [
              const Padding(padding: EdgeInsetsGeometry.only(top: 10)),
              Text(
                number.jpName,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              Text(
                number.enName,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
            ],
          ),
          const Spacer(flex: 5),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              number.numm ?? "",
              style: const TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 49, 54, 13)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource(number.sound));
              },
              icon: Icon(Icons.play_arrow, size: 50, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
