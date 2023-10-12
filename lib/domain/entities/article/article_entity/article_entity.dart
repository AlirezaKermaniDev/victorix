import 'package:article/domain/entities/article/article_detail_entity/article_detail_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_entity.freezed.dart';
part 'article_entity.g.dart';

@Freezed(toJson: true)
abstract class ArticleEntity with _$ArticleEntity {
  const factory ArticleEntity({
    String? imageUrl,
    String? title,
    String? description,
    DateTime? dateTime,
    String? category,
    List<ArticleDetailEntity>? details,
  }) = _ArticleEntity;

  factory ArticleEntity.fromJson(Map<String, dynamic> json) =>
      _$ArticleEntityFromJson(json);
}
