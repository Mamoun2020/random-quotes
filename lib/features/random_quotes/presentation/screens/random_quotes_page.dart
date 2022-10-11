import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:one_studio_core/core.dart';
import 'package:quotes/core/resources/quotes_assets.dart';
import 'package:quotes/core/resources/quotes_string.dart';
import 'package:quotes/core/widgets/quotes_app_bar.dart';
import 'package:quotes/features/random_quotes/presentation/cubit/random_quotes_cubit.dart';
import '../../../../core/resources/quotes_colors.dart';
import '../widgets/quotes_content.dart';

class RandomQuotePage extends StatefulWidget implements AutoRouteWrapper {
  const RandomQuotePage({Key? key}) : super(key: key);

  @override
  State<RandomQuotePage> createState() => _QuoteScreenState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => sl<RandomQuotesCubit>()..getRandomQuote(),
        child: this,
      );
}

class _QuoteScreenState extends State<RandomQuotePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<RandomQuotesCubit>().getRandomQuote(),
      child: Scaffold(
        appBar: const QuoteAppBar(
          title: QuotesStrings.quoteTitle,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<RandomQuotesCubit, RandomQuotesState>(
              builder: (_, state) {
                log(state.toString(), name: '999');
                if (state is RandomQuotesIsLoading) {
                  log(state.toString(), name: '999');
                  return Center(
                    child: SpinKitFadingCircle(
                      color: QuotesColors.primary,
                    ),
                  );
                } else if (state is RandomQuotesError) {
                  log(state.toString(), name: '999');
                  return const Text('RandomQuotesError');
                } else if (state is RandomQuotesLoaded) {
                  log(state.toString(), name: '999');

                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      QuotesContent(quote: state.quote),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () =>
                            context.read<RandomQuotesCubit>().getRandomQuote(),
                        child: CircleAvatar(
                          radius: 32,
                          child: Image.asset(QuotesImagesAssets.reload,
                              fit: BoxFit.cover,
                              width: 24,
                              color: QuotesColors.white),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Center(
                    child: SpinKitFadingCircle(
                      color: QuotesColors.primary,
                    ),
                  );
                }
              },
            )),
      ),
    );
  }
}
