import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_detail_entity.freezed.dart';
part 'article_detail_entity.g.dart';

@Freezed(toJson: true)
abstract class ArticleDetailEntity with _$ArticleDetailEntity {
  const factory ArticleDetailEntity({
    String? imageUrl,
    String? title,
    String? description,
  }) = _ArticleDetailEntity;

  factory ArticleDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailEntityFromJson(json);
}
