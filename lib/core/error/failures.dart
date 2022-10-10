import 'package:one_studio_core/core.dart';



class CacheFailure extends Failure{
  const CacheFailure({required this.error});
  final Map<String, dynamic> error;
  @override
  String toMessage() => error["message"] ?? '-';

}