import 'package:find_services/app/constants/index.dart';
import 'package:flutter/material.dart';

class MainTextButton extends StatelessWidget {
  const MainTextButton(this.text,
      {Key? key,
      required this.onTap,
      this.fontSize = 25.0,
      this.color = const Color(0xFF414141)})
      : super(key: key);

  final VoidCallback onTap;
  final String text;

  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text,
          style: mainTextStyle(
            fontWeight: FontWeight.w700,
            size: fontSize,
            color: color,
          )),
      onPressed: onTap,
    );
  }
}
