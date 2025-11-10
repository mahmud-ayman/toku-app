import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  final Color color;
  final String text;
  final VoidCallback? onTap;

  const categories({
    required this.color,
    required this.text,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<categories> {
  double xOffset = 0;
  double yOffset = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onPanUpdate: (details) {
        setState(() {
          xOffset += details.delta.dx;
          yOffset += details.delta.dy;
        });
      },
      onPanEnd: (details) {
        setState(() {
          xOffset = 0;
          yOffset = 0;
        });
      },
      child: Transform.translate(
        offset: Offset(xOffset, yOffset),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.lighten,
              color: widget.color,
              border: Border.all(
                  color: const Color.fromARGB(255, 29, 110, 145), width: 1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            padding: const EdgeInsets.only(left: 20),
            height: 100,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              widget.text,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
