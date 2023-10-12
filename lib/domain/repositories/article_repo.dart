import 'package:article/core/failure/failure.dart';
import 'package:article/domain/entities/article/article_entity/article_entity.dart';
import 'package:article/domain/entities/base/base.dart';
import 'package:dartz/dartz.dart';

abstract class ArticleRepo {
  Future<Either<Failure, BaseEntity<List<ArticleEntity>>>> getAllArticles();
}
