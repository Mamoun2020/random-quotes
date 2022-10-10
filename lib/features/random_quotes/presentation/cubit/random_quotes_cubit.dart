import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_studio_core/core.dart';
import 'package:quotes/features/random_quotes/data/models/quote.dart';
import 'package:quotes/features/random_quotes/data/repositories/random_quotes_repository.dart';

part 'random_quotes_state.dart';

class RandomQuotesCubit extends Cubit<RandomQuotesState> {
  final RandomQuotesRepository _repository;
  RandomQuotesCubit(this._repository) : super(RandomQuotesInitial());

  Future<void> getRandomQuote() async {
    emit(RandomQuotesIsLoading());
    final response = await _repository.randomQuotes();
    emit(response.fold((failure) => RandomQuotesError(msg: _mapFailureToMsg(failure)),
        (quote) => RandomQuotesLoaded(quote: quote)));
  }

  String _mapFailureToMsg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server Failure';
      default:
        return 'Unexpected Error';
    }
  }
}
