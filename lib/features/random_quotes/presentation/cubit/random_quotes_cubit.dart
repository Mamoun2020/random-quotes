import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_studio_core/core.dart';
import 'package:quotes/features/random_quotes/data/models/quote.dart';
import 'package:quotes/features/random_quotes/data/repositories/random_quotes_repository.dart';

part 'random_quotes_state.dart';

class RandomQuotesCubit extends Cubit<RandomQuotesState> {
  final RandomQuotesRepository _repository;
  final Quote _quote;
  RandomQuotesCubit(this._repository, this._quote)
      : super(RandomQuotesInitial());

  Future<void> getRandomQuote() async {
    final response = await _repository.randomQuotes();
    response.fold(
        (failure) => emit(RandomQuotesError(msg: failure.toMessage())),
        (quote) => emit(RandomQuotesLoaded(quote: quote)));
  }

  String _mapFailureToMsg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server Failure';
      case CacheFailure:
        return 'Cache Failure';
      default:
        return 'Unexpected Error';
    }
  }
}
