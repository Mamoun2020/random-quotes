import 'package:one_studio_core/core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quote.g.dart';

@JsonSerializable()
class Quote extends Model {
  final String author;
  final String quote;
  final String permalink;

  const Quote(
      {required int id,
      required this.author,
      required this.quote,
      required this.permalink})
      : super(id: id);

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuoteToJson(this);
}
