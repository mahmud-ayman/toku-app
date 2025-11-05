import 'package:flutter/material.dart';
import 'package:toku/moudels/number_model.dart';

class number_card extends StatelessWidget {
  number_card({
    required this.number,
    Key? key,
  }) : super(key: key);
  Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3, top: 2, left: 3, right: 3),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown, width: 2),
        color: const Color.fromARGB(255, 255, 223, 186),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 85,
      child: Row(
        children: [
          Container(
              color: const Color.fromARGB(255, 217, 175, 84),
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
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ],
          ),
          const Spacer(flex: 8),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.play_arrow, size: 50, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
