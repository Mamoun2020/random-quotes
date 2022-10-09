import 'package:bond/core/resources/quotes_colors.dart';
import 'package:bond/core/resources/quotes_string.dart';
import 'package:flutter/material.dart';


class QuotesContent extends StatelessWidget {
  const QuotesContent({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(top: 8, start: 16, end: 16),
      decoration: BoxDecoration(
        color: QuotesColors.secondPrimary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            'quote.content',
            maxLines: 10,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontFamily: QuotesStrings.fontFamily,
              fontWeight: FontWeight.w500,
              color: QuotesColors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'quote.author',
            style: TextStyle(
              fontSize: 16,
              fontFamily: QuotesStrings.fontFamily,
              fontWeight: FontWeight.w500,
              color: QuotesColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
