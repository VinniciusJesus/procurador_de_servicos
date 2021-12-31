import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle mainTextStyle({
  Color color = const Color(0xFF272B2E),
  double size = 22.0,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return GoogleFonts.lato(
    color: color,
    fontSize: size,
    fontWeight: fontWeight,
  );
}
