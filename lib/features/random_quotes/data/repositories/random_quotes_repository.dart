import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:one_studio_core/core.dart';
import 'package:quotes/features/random_quotes/data/data_sources/random_quotes_local_data_source.dart';
import 'package:quotes/features/random_quotes/data/data_sources/random_quotes_remote_data_source.dart';
import 'package:quotes/features/random_quotes/data/models/quote.dart';
import '../../../../core/network/network_info.dart';

class RandomQuotesRepository {
  final RandomQuotesLocalDataSource _randomQuotesLocalDataSource;
  final RandomQuotesRemoteDataSource _randomQuotesRemoteDataSource;
  final NetworkInfo networkInfo;
  RandomQuotesRepository(this._randomQuotesLocalDataSource,
      this._randomQuotesRemoteDataSource, this.networkInfo);

  Future<Either<Failure, SingleResponse<Quote>>> randomQuotes() async {
    if (await networkInfo.isConnected) {
      try {
        final SingleResponse<Quote> response =
            await _randomQuotesRemoteDataSource.quotes();
        _randomQuotesLocalDataSource.cacheQuote(response);
        return Right(response);
      } on ServerException catch (e) {
        return Left(e.toFailure());
      }
    } else {
      try {
        final localCacheQuote =
            _randomQuotesLocalDataSource.getLastRandomQuote();
        return Right(localCacheQuote);
      } on CacheException catch (e) {
        return Left(e.toFailure());
      }
    }
  }
}
