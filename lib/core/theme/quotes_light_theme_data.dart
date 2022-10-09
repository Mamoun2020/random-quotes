import 'package:flutter/material.dart';

import '../resources/quotes_colors.dart';
import '../resources/quotes_fonts.dart';
import '../resources/quotes_styles.dart';
import '../resources/quotes_text_theme.dart';

ThemeData quotesLightThemeData() {
  return ThemeData(
    /// main color of the app
    primaryColor: QuotesColors.primary,
    primaryColorLight: QuotesColors.primary,
    primaryColorDark: QuotesColors.secondPrimary,
    disabledColor: QuotesColors.hintPrimary, // this for disabled button color
    splashColor: QuotesColors.primary,
    backgroundColor: QuotesColors.white,
    scaffoldBackgroundColor: QuotesColors.white,

    /// AppBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: QuotesColors.primary,
      elevation: 0,
      titleTextStyle:
      getBoldStyle(color: QuotesColors.white, fontSize: QuotesFontSize.s14),
    ),

    /// Button theme
    buttonTheme: ButtonThemeData(
      shape:const RoundedRectangleBorder(),
      disabledColor: QuotesColors.secondPrimary,
      buttonColor: QuotesColors.primary,
    ),

    /// Text Theme
    textTheme: QuotesTextTheme(),
  );
}
