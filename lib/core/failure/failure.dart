import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

// Customer failure is an [Union] class that hold all of the failure that may happen.
@freezed
abstract class Failure with _$Failure {
  const factory Failure.apiFailure(String message) = ApiFailure;
}
