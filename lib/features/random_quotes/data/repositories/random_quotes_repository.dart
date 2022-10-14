import 'package:dartz/dartz.dart';
import 'package:one_studio_core/core.dart';
import 'package:quotes/features/random_quotes/data/data_sources/random_quotes_local_data_source.dart';
import 'package:quotes/features/random_quotes/data/data_sources/random_quotes_remote_data_source.dart';
import 'package:quotes/features/random_quotes/data/models/quote.dart';
import '../../../../core/network/network_info.dart';

class RandomQuotesRepository {
  final RandomQuotesRemoteDataSource _randomQuotesRemoteDataSource;
  final RandomQuotesLocalDataSource _randomQuotesLocalDataSource;
  final NetworkInfo _networkInfo;
  RandomQuotesRepository(this._randomQuotesRemoteDataSource,
      this._randomQuotesLocalDataSource, this._networkInfo);

  Future<Either<Failure, Quote>> randomQuotes() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _randomQuotesRemoteDataSource.quotes();
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
