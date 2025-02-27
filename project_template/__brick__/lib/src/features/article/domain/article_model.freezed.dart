// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleBaseModel _$ArticleBaseModelFromJson(Map<String, dynamic> json) {
  return _ArticleBaseModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleBaseModel {
  List<ArticleModel> get artilces => throw _privateConstructorUsedError;
  int get articlesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleBaseModelCopyWith<ArticleBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleBaseModelCopyWith<$Res> {
  factory $ArticleBaseModelCopyWith(
          ArticleBaseModel value, $Res Function(ArticleBaseModel) then) =
      _$ArticleBaseModelCopyWithImpl<$Res, ArticleBaseModel>;
  @useResult
  $Res call({List<ArticleModel> artilces, int articlesCount});
}

/// @nodoc
class _$ArticleBaseModelCopyWithImpl<$Res, $Val extends ArticleBaseModel>
    implements $ArticleBaseModelCopyWith<$Res> {
  _$ArticleBaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artilces = null,
    Object? articlesCount = null,
  }) {
    return _then(_value.copyWith(
      artilces: null == artilces
          ? _value.artilces
          : artilces // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
      articlesCount: null == articlesCount
          ? _value.articlesCount
          : articlesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleBaseModelCopyWith<$Res>
    implements $ArticleBaseModelCopyWith<$Res> {
  factory _$$_ArticleBaseModelCopyWith(
          _$_ArticleBaseModel value, $Res Function(_$_ArticleBaseModel) then) =
      __$$_ArticleBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ArticleModel> artilces, int articlesCount});
}

/// @nodoc
class __$$_ArticleBaseModelCopyWithImpl<$Res>
    extends _$ArticleBaseModelCopyWithImpl<$Res, _$_ArticleBaseModel>
    implements _$$_ArticleBaseModelCopyWith<$Res> {
  __$$_ArticleBaseModelCopyWithImpl(
      _$_ArticleBaseModel _value, $Res Function(_$_ArticleBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artilces = null,
    Object? articlesCount = null,
  }) {
    return _then(_$_ArticleBaseModel(
      artilces: null == artilces
          ? _value._artilces
          : artilces // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
      articlesCount: null == articlesCount
          ? _value.articlesCount
          : articlesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ArticleBaseModel implements _ArticleBaseModel {
  const _$_ArticleBaseModel(
      {final List<ArticleModel> artilces = const [], this.articlesCount = 0})
      : _artilces = artilces;

  factory _$_ArticleBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleBaseModelFromJson(json);

  final List<ArticleModel> _artilces;
  @override
  @JsonKey()
  List<ArticleModel> get artilces {
    if (_artilces is EqualUnmodifiableListView) return _artilces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artilces);
  }

  @override
  @JsonKey()
  final int articlesCount;

  @override
  String toString() {
    return 'ArticleBaseModel(artilces: $artilces, articlesCount: $articlesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleBaseModel &&
            const DeepCollectionEquality().equals(other._artilces, _artilces) &&
            (identical(other.articlesCount, articlesCount) ||
                other.articlesCount == articlesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_artilces), articlesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleBaseModelCopyWith<_$_ArticleBaseModel> get copyWith =>
      __$$_ArticleBaseModelCopyWithImpl<_$_ArticleBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleBaseModelToJson(
      this,
    );
  }
}

abstract class _ArticleBaseModel implements ArticleBaseModel {
  const factory _ArticleBaseModel(
      {final List<ArticleModel> artilces,
      final int articlesCount}) = _$_ArticleBaseModel;

  factory _ArticleBaseModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleBaseModel.fromJson;

  @override
  List<ArticleModel> get artilces;
  @override
  int get articlesCount;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleBaseModelCopyWith<_$_ArticleBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  return _ArticleModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res, ArticleModel>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res, $Val extends ArticleModel>
    implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleModelCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$$_ArticleModelCopyWith(
          _$_ArticleModel value, $Res Function(_$_ArticleModel) then) =
      __$$_ArticleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_ArticleModelCopyWithImpl<$Res>
    extends _$ArticleModelCopyWithImpl<$Res, _$_ArticleModel>
    implements _$$_ArticleModelCopyWith<$Res> {
  __$$_ArticleModelCopyWithImpl(
      _$_ArticleModel _value, $Res Function(_$_ArticleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_ArticleModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ArticleModel implements _ArticleModel {
  const _$_ArticleModel({this.title = '', this.description = ''});

  factory _$_ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ArticleModel(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleModelCopyWith<_$_ArticleModel> get copyWith =>
      __$$_ArticleModelCopyWithImpl<_$_ArticleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleModelToJson(
      this,
    );
  }
}

abstract class _ArticleModel implements ArticleModel {
  const factory _ArticleModel({final String title, final String description}) =
      _$_ArticleModel;

  factory _ArticleModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleModel.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleModelCopyWith<_$_ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
