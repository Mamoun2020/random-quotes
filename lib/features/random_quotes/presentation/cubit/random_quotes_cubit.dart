import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'random_quotes_state.dart';

class RandomQuotesCubit extends Cubit<RandomQuotesState> {
  RandomQuotesCubit() : super(RandomQuotesInitial());
}
