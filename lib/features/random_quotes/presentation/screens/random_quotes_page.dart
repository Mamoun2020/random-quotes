
import 'package:flutter/material.dart';
import 'package:quotes/core/resources/quotes_assets.dart';
import 'package:quotes/core/resources/quotes_string.dart';
import 'package:quotes/core/widgets/quotes_app_bar.dart';
import '../../../../core/resources/quotes_colors.dart';
import '../widgets/quotes_content.dart';

class RandomQuotePage extends StatefulWidget {
  const RandomQuotePage({Key? key}) : super(key: key);

  @override
  State<RandomQuotePage> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<RandomQuotePage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const QuoteAppBar(
        title: QuotesStrings.quoteTitle,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const QuotesContent(),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: CircleAvatar(
                        radius: 32,
                        child: Image.asset(QuotesImagesAssets.reload,
                            fit: BoxFit.cover, width: 24, color: QuotesColors.white),
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}

