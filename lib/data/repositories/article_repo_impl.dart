import 'package:article/core/failure/failure.dart';
import 'package:article/data/data_source/data_source.dart';
import 'package:article/domain/entities/article/article_entity/article_entity.dart';
import 'package:article/domain/entities/base/base.dart';
import 'package:article/domain/repositories/article_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ArticleRepo)
class ArticleRepoImpl implements ArticleRepo {
  final DataSource dataSource;
  ArticleRepoImpl(this.dataSource);
  @override
  Future<Either<Failure, BaseEntity<List<ArticleEntity>>>>
      getAllArticles() async {
    final result = await dataSource.getAllArticles();
    return result.fold(
        (l) => Left(l),
        (r) => Right(BaseEntity<List<ArticleEntity>>.fromJson(r, (json) {
              final List<ArticleEntity> articleEntities = [];
              //return ArticleEntity.fromJson(json as Map<String, dynamic>);
              for (var i = 0;
                  i < (json as List<Map<String, dynamic>>).length;
                  i++) {
                articleEntities.add(ArticleEntity.fromJson(json[i]));
              }
              return articleEntities;
            })));
  }
}
