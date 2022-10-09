import 'package:flutter/material.dart';
import 'package:quotes/core/resources/quotes_colors.dart';
import 'quotes_fonts.dart';
import 'quotes_styles.dart';

class QuotesTextTheme extends TextTheme {
  @override
  TextStyle get displayMedium => getMediumStyle(
      fontSize: QuotesFontSize.s20, color: QuotesColors.primary);

  @override
  TextStyle get displaySmall => getBoldStyle(
      fontSize: QuotesFontSize.s16, color: QuotesColors.primary);

  @override
  TextStyle get headlineMedium => getMediumStyle(
      fontSize: QuotesFontSize.s16, color: QuotesColors.primary);

  @override
  TextStyle get headlineSmall => getTextStyle(
      fontSize: QuotesFontSize.s16, color: QuotesColors.primary);

  @override
  TextStyle get titleMedium => getMediumStyle(
      fontSize: QuotesFontSize.s14, color: QuotesColors.primary);
}
