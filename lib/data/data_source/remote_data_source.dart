import 'package:article/core/failure/failure.dart';
import 'package:article/core/jsons/temm_article_json.dart';
import 'package:article/data/data_source/data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DataSource)
class RemoteDataSource implements DataSource {
  @override
  Future<Either<Failure, Map<String, dynamic>>> getAllArticles() async {
    return Right(tempArticleJson);
  }
}
