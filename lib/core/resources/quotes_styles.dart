import 'package:flutter/material.dart';
import 'package:quotes/core/resources/quotes_fonts.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

// Regular TextStyle
TextStyle getTextStyle({required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, QuotesFontFamily.fontFamily, QuotesFontWeight.regular, color);
}

// Medium TextStyle
TextStyle getMediumStyle({required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, QuotesFontFamily.fontFamily, QuotesFontWeight.medium, color);
}

// Bold TextStyle
TextStyle getBoldStyle({required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, QuotesFontFamily.fontFamily, QuotesFontWeight.bold, color);
}
