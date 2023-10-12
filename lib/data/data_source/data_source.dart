import 'package:article/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class DataSource {
  Future<Either<Failure, Map<String, dynamic>>> getAllArticles();
}
