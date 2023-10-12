import 'package:article/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

/// Its just an Interface for our `usecases` to make sure they all implements in the same way.
abstract class UseCase<Type, Params> {
  /// [call] function is equal to custractor of our usecase instances which means
  /// there is no need to code like this `addCustomer.call(customer)` to call the [call] function.
  /// instead we can do this `addCustomer(customer)` and then the flutter automatically call the [call] function.
  Future<Either<Failure, Type>> call({required Params params});
}
