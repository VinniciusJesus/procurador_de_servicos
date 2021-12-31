import 'package:find_services/app/constants/index.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  MainButton(
    this.text, {
    Key? key,
    required this.onTap,
    this.bgColor = const Color(0xFF1f61dc),
    this.tapColor = const Color(0xFF272B2E),
    this.txtColor = Colors.white,
    this.elevation = 3.0,
    this.shadowColor = const Color(0xFF272B2E),
    this.radius = 10.0,
    this.fontSize = 25.0,
    this.width = double.infinity,
    this.height = 70,
  }) : super(key: key);

  final String text;
  late VoidCallback? onTap;
  late Color bgColor;
  final Color tapColor;
  final Color txtColor;
  final double elevation;
  final Color shadowColor;
  final double radius;
  final double fontSize;
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        child:
            Text(text, style: mainTextStyle(color: txtColor, size: fontSize)),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          shadowColor: shadowColor,
          elevation: elevation,
          primary: bgColor,
          onPrimary: tapColor,
        ),
      ),
    );
  }
}
