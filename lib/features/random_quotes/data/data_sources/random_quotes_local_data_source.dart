import 'dart:convert';

import 'package:quotes/features/random_quotes/data/models/quote.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RandomQuotesLocalDataSource {
  final SharedPreferences _sharedPreference;

  RandomQuotesLocalDataSource(this._sharedPreference);

  static var cachedRandomQuote = 'CACHED_RANDOM_QUOTE';

  Quote getLastRandomQuote() {
    final quotes = _sharedPreference
        .getString(RandomQuotesLocalDataSource.cachedRandomQuote);
    return Quote.fromJson(json.decode(quotes ?? ''));
  }

  Future<void> cacheQuote(Quote quote) {
    return _sharedPreference.setString(
        RandomQuotesLocalDataSource.cachedRandomQuote, json.encode(quote));
  }
}
