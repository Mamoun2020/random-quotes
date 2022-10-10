import 'dart:convert';

import 'package:one_studio_core/core.dart';
import 'package:quotes/features/random_quotes/data/models/quote.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RandomQuotesLocalDataSource {
  final SharedPreferences _sharedPreference;

  RandomQuotesLocalDataSource(this._sharedPreference);

  static var cachedRandomQuote = 'CACHED_RANDOM_QUOTE';

  SingleResponse<Quote> getLastRandomQuote() {
    final quotes = _sharedPreference
        .getString(RandomQuotesLocalDataSource.cachedRandomQuote);

    if (quotes == null) {
      throw CacheException();
    }
    return SingleResponse<Quote>.fromJson(json.decode(quotes));
  }

  Future<void> cacheQuote(SingleResponse<Quote> quote) {
    return _sharedPreference.setString(
        RandomQuotesLocalDataSource.cachedRandomQuote, json.encode(quote));
  }
}
