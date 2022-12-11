import 'package:flutter/material.dart';

class RoundedField extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Size length;

  const RoundedField({
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
        height: 40,
          width: length.width,
          color: color,
          child: Text(
            text,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: textColor,
              fontSize: 25,
              fontFamily: 'Nova',
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
