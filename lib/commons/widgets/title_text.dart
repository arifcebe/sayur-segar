import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleText extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;

  TitleText({
    @required this.title,
    this.color = Colors.white,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: this.color,
        fontSize: fontSize,
      ),
    );
  }
}
