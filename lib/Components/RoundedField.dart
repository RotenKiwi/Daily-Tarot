import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Size length;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
          width: length.width,
          color: color,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 25,
            ),
          )),
    );
  }
}
