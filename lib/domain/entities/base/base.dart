import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseEntity<T> {
  const BaseEntity(this.data);

  factory BaseEntity.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseEntityFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T value) toJsonT) {
    return _$BaseEntityToJson<T>(this, toJsonT);
  }
  final T? data;
}
