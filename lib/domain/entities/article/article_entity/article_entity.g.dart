// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleEntityImpl _$$ArticleEntityImplFromJson(Map<String, dynamic> json) =>
    _$ArticleEntityImpl(
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      category: json['category'] as String?,
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => ArticleDetailEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArticleEntityImplToJson(_$ArticleEntityImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'description': instance.description,
      'dateTime': instance.dateTime?.toIso8601String(),
      'category': instance.category,
      'details': instance.details,
    };
