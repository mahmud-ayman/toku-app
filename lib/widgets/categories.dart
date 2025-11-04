import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  categories({
    required this.color,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  Color color;
  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 65,
        width: double.infinity,
        color: color,
        alignment: Alignment.centerLeft,
        child: Text(
          "$text",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
