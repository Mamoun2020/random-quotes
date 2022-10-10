
import 'package:one_studio_core/core.dart';

import 'failures.dart';

class CacheException implements Exception{
  const CacheException({required this.error,});

  final Map<String, dynamic> error;
  Failure toFailure() => CacheFailure(error: error,);

}