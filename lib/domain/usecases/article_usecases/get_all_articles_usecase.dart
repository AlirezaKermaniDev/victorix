import 'package:article/core/failure/failure.dart';
import 'package:article/data/params/no_params.dart';
import 'package:article/domain/entities/article/article_entity/article_entity.dart';
import 'package:article/domain/entities/base/base.dart';
import 'package:article/domain/repositories/article_repo.dart';
import 'package:article/domain/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllArticlesUseCase
    implements UseCase<BaseEntity<List<ArticleEntity>>, NoParams> {
  final ArticleRepo _articleRepo;

  GetAllArticlesUseCase(this._articleRepo);

  @override
  Future<Either<Failure, BaseEntity<List<ArticleEntity>>>> call(
      {NoParams? params}) async {
    return await _articleRepo.getAllArticles();
  }
}
