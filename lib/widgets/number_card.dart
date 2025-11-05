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
        borderRadius: BorderRadius.all(Radius.circular(8)),
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
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 175, 84),
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
