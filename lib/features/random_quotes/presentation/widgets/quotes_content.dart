import 'package:flutter/material.dart';
import 'package:quotes/core/resources/quotes_colors.dart';
import 'package:quotes/core/resources/quotes_string.dart';
import 'package:quotes/features/random_quotes/data/models/quote.dart';


class QuotesContent extends StatelessWidget {
  const QuotesContent({
    Key? key, required this.quote,
  }) : super(key: key);
  final Quote quote;
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
            quote.quote,
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
            quote.author,
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
