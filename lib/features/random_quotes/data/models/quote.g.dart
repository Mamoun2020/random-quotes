// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quote _$QuoteFromJson(Map<String, dynamic> json) => Quote(
      id: json['id'] as int,
      author: json['author'] as String,
      quote: json['quote'] as String,
      permalink: json['permalink'] as String,
    );

Map<String, dynamic> _$QuoteToJson(Quote instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'quote': instance.quote,
      'permalink': instance.permalink,
    };
