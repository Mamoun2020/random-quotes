import 'dart:convert';
import 'dart:developer';

import 'package:one_studio_core/core.dart';
import 'package:quotes/features/random_quotes/data/models/quote.dart';
import 'package:dio/dio.dart';

class RandomQuotesRemoteDataSource extends DataSource {
  final ApiClient _client;

  RandomQuotesRemoteDataSource(this._client);

  Future<Quote> quotes() async {
    final response =
        await _client.get(RandomQuotesApis.quotes, headers: Api.headers());

      return Quote.fromJson(response.data);
  }
}

extension RandomQuotesApis on Api {
  static String get quotes => 'random.json';
}
