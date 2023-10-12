// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleDetailEntity _$ArticleDetailEntityFromJson(Map<String, dynamic> json) {
  return _ArticleDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$ArticleDetailEntity {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleDetailEntityCopyWith<ArticleDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDetailEntityCopyWith<$Res> {
  factory $ArticleDetailEntityCopyWith(
          ArticleDetailEntity value, $Res Function(ArticleDetailEntity) then) =
      _$ArticleDetailEntityCopyWithImpl<$Res, ArticleDetailEntity>;
  @useResult
  $Res call({String? imageUrl, String? title, String? description});
}

/// @nodoc
class _$ArticleDetailEntityCopyWithImpl<$Res, $Val extends ArticleDetailEntity>
    implements $ArticleDetailEntityCopyWith<$Res> {
  _$ArticleDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleDetailEntityImplCopyWith<$Res>
    implements $ArticleDetailEntityCopyWith<$Res> {
  factory _$$ArticleDetailEntityImplCopyWith(_$ArticleDetailEntityImpl value,
          $Res Function(_$ArticleDetailEntityImpl) then) =
      __$$ArticleDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl, String? title, String? description});
}

/// @nodoc
class __$$ArticleDetailEntityImplCopyWithImpl<$Res>
    extends _$ArticleDetailEntityCopyWithImpl<$Res, _$ArticleDetailEntityImpl>
    implements _$$ArticleDetailEntityImplCopyWith<$Res> {
  __$$ArticleDetailEntityImplCopyWithImpl(_$ArticleDetailEntityImpl _value,
      $Res Function(_$ArticleDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ArticleDetailEntityImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleDetailEntityImpl implements _ArticleDetailEntity {
  const _$ArticleDetailEntityImpl(
      {this.imageUrl, this.title, this.description});

  factory _$ArticleDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleDetailEntityImplFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'ArticleDetailEntity(imageUrl: $imageUrl, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleDetailEntityImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleDetailEntityImplCopyWith<_$ArticleDetailEntityImpl> get copyWith =>
      __$$ArticleDetailEntityImplCopyWithImpl<_$ArticleDetailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _ArticleDetailEntity implements ArticleDetailEntity {
  const factory _ArticleDetailEntity(
      {final String? imageUrl,
      final String? title,
      final String? description}) = _$ArticleDetailEntityImpl;

  factory _ArticleDetailEntity.fromJson(Map<String, dynamic> json) =
      _$ArticleDetailEntityImpl.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$ArticleDetailEntityImplCopyWith<_$ArticleDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
