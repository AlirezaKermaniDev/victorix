// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleEntity _$ArticleEntityFromJson(Map<String, dynamic> json) {
  return _ArticleEntity.fromJson(json);
}

/// @nodoc
mixin _$ArticleEntity {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  List<ArticleDetailEntity>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleEntityCopyWith<ArticleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleEntityCopyWith<$Res> {
  factory $ArticleEntityCopyWith(
          ArticleEntity value, $Res Function(ArticleEntity) then) =
      _$ArticleEntityCopyWithImpl<$Res, ArticleEntity>;
  @useResult
  $Res call(
      {String? imageUrl,
      String? title,
      String? description,
      DateTime? dateTime,
      String? category,
      List<ArticleDetailEntity>? details});
}

/// @nodoc
class _$ArticleEntityCopyWithImpl<$Res, $Val extends ArticleEntity>
    implements $ArticleEntityCopyWith<$Res> {
  _$ArticleEntityCopyWithImpl(this._value, this._then);

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
    Object? dateTime = freezed,
    Object? category = freezed,
    Object? details = freezed,
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
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ArticleDetailEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleEntityImplCopyWith<$Res>
    implements $ArticleEntityCopyWith<$Res> {
  factory _$$ArticleEntityImplCopyWith(
          _$ArticleEntityImpl value, $Res Function(_$ArticleEntityImpl) then) =
      __$$ArticleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? imageUrl,
      String? title,
      String? description,
      DateTime? dateTime,
      String? category,
      List<ArticleDetailEntity>? details});
}

/// @nodoc
class __$$ArticleEntityImplCopyWithImpl<$Res>
    extends _$ArticleEntityCopyWithImpl<$Res, _$ArticleEntityImpl>
    implements _$$ArticleEntityImplCopyWith<$Res> {
  __$$ArticleEntityImplCopyWithImpl(
      _$ArticleEntityImpl _value, $Res Function(_$ArticleEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? dateTime = freezed,
    Object? category = freezed,
    Object? details = freezed,
  }) {
    return _then(_$ArticleEntityImpl(
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
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ArticleDetailEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleEntityImpl implements _ArticleEntity {
  const _$ArticleEntityImpl(
      {this.imageUrl,
      this.title,
      this.description,
      this.dateTime,
      this.category,
      final List<ArticleDetailEntity>? details})
      : _details = details;

  factory _$ArticleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleEntityImplFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? dateTime;
  @override
  final String? category;
  final List<ArticleDetailEntity>? _details;
  @override
  List<ArticleDetailEntity>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArticleEntity(imageUrl: $imageUrl, title: $title, description: $description, dateTime: $dateTime, category: $category, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleEntityImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, title, description,
      dateTime, category, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleEntityImplCopyWith<_$ArticleEntityImpl> get copyWith =>
      __$$ArticleEntityImplCopyWithImpl<_$ArticleEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleEntityImplToJson(
      this,
    );
  }
}

abstract class _ArticleEntity implements ArticleEntity {
  const factory _ArticleEntity(
      {final String? imageUrl,
      final String? title,
      final String? description,
      final DateTime? dateTime,
      final String? category,
      final List<ArticleDetailEntity>? details}) = _$ArticleEntityImpl;

  factory _ArticleEntity.fromJson(Map<String, dynamic> json) =
      _$ArticleEntityImpl.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get dateTime;
  @override
  String? get category;
  @override
  List<ArticleDetailEntity>? get details;
  @override
  @JsonKey(ignore: true)
  _$$ArticleEntityImplCopyWith<_$ArticleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
