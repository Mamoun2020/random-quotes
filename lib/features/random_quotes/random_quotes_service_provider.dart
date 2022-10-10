
import 'package:get_it/get_it.dart';
import 'package:one_studio_core/core.dart';
import 'package:quotes/features/random_quotes/data/data_sources/random_quotes_local_data_source.dart';
import 'package:quotes/features/random_quotes/data/models/quote.dart';
import 'package:quotes/features/random_quotes/data/repositories/random_quotes_repository.dart';

import 'data/data_sources/random_quotes_remote_data_source.dart';

class RandomQuotesServiceProvider extends ServiceProvider{
  @override
  Future<void> register(GetIt it) async{
   it.registerFactory(() => RandomQuotesLocalDataSource(it()));
   it.registerFactory(() => RandomQuotesRemoteDataSource(it()));
   it.registerFactory(() => RandomQuotesRepository(it(),it(),it()));
  }

  @override
  T? responseConvert<T>(Map<String, dynamic> json) {
    switch (T) {
      case Quote:
        return Quote.fromJson(json) as T;
      default:
        return null;
    }
  }
}