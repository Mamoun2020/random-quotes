import 'package:flutter/material.dart';

import '../resources/quotes_colors.dart';
import '../resources/quotes_string.dart';

class QuoteAppBar extends StatelessWidget implements PreferredSize {
  const QuoteAppBar({
    required this.title,
    this.textStyle,
    this.centerTitle,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);
  final String title;
  final TextStyle? textStyle;
  final bool? centerTitle;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: textStyle ??TextStyle(fontSize:24,fontFamily: QuotesStrings.fontFamily,fontWeight: FontWeight.bold,color: QuotesColors.black),
      ),
      centerTitle: centerTitle ?? true,
        backgroundColor: backgroundColor ?? QuotesColors.white,
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity,46);
}