// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String get ph_no => throw _privateConstructorUsedError;
  set ph_no(String value) => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  set description(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call({String ph_no, String description});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ph_no = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      ph_no: null == ph_no
          ? _value.ph_no
          : ph_no // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ph_no, String description});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ph_no = null,
    Object? description = null,
  }) {
    return _then(_$CommentImpl(
      ph_no: null == ph_no
          ? _value.ph_no
          : ph_no // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  _$CommentImpl({required this.ph_no, required this.description});

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  String ph_no;
  @override
  String description;

  @override
  String toString() {
    return 'Comment(ph_no: $ph_no, description: $description)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  factory _Comment({required String ph_no, required String description}) =
      _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  String get ph_no;
  set ph_no(String value);
  @override
  String get description;
  set description(String value);
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
mixin _$Repository {
  String get templateImageUrl => throw _privateConstructorUsedError;
  set templateImageUrl(String value) => throw _privateConstructorUsedError;
  String get repositoryTitle => throw _privateConstructorUsedError;
  set repositoryTitle(String value) => throw _privateConstructorUsedError;
  List<String> get writtenLangs => throw _privateConstructorUsedError;
  set writtenLangs(List<String> value) => throw _privateConstructorUsedError;
  List<String> get platforms => throw _privateConstructorUsedError;
  set platforms(List<String> value) => throw _privateConstructorUsedError;
  TypeOfUrl get appUrlType => throw _privateConstructorUsedError;
  set appUrlType(TypeOfUrl value) => throw _privateConstructorUsedError;
  String get appUrl => throw _privateConstructorUsedError;
  set appUrl(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
  @useResult
  $Res call(
      {String templateImageUrl,
      String repositoryTitle,
      List<String> writtenLangs,
      List<String> platforms,
      TypeOfUrl appUrlType,
      String appUrl});
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateImageUrl = null,
    Object? repositoryTitle = null,
    Object? writtenLangs = null,
    Object? platforms = null,
    Object? appUrlType = null,
    Object? appUrl = null,
  }) {
    return _then(_value.copyWith(
      templateImageUrl: null == templateImageUrl
          ? _value.templateImageUrl
          : templateImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      repositoryTitle: null == repositoryTitle
          ? _value.repositoryTitle
          : repositoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      writtenLangs: null == writtenLangs
          ? _value.writtenLangs
          : writtenLangs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      platforms: null == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      appUrlType: null == appUrlType
          ? _value.appUrlType
          : appUrlType // ignore: cast_nullable_to_non_nullable
              as TypeOfUrl,
      appUrl: null == appUrl
          ? _value.appUrl
          : appUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryImplCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$RepositoryImplCopyWith(
          _$RepositoryImpl value, $Res Function(_$RepositoryImpl) then) =
      __$$RepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String templateImageUrl,
      String repositoryTitle,
      List<String> writtenLangs,
      List<String> platforms,
      TypeOfUrl appUrlType,
      String appUrl});
}

/// @nodoc
class __$$RepositoryImplCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$RepositoryImpl>
    implements _$$RepositoryImplCopyWith<$Res> {
  __$$RepositoryImplCopyWithImpl(
      _$RepositoryImpl _value, $Res Function(_$RepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateImageUrl = null,
    Object? repositoryTitle = null,
    Object? writtenLangs = null,
    Object? platforms = null,
    Object? appUrlType = null,
    Object? appUrl = null,
  }) {
    return _then(_$RepositoryImpl(
      templateImageUrl: null == templateImageUrl
          ? _value.templateImageUrl
          : templateImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      repositoryTitle: null == repositoryTitle
          ? _value.repositoryTitle
          : repositoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      writtenLangs: null == writtenLangs
          ? _value.writtenLangs
          : writtenLangs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      platforms: null == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      appUrlType: null == appUrlType
          ? _value.appUrlType
          : appUrlType // ignore: cast_nullable_to_non_nullable
              as TypeOfUrl,
      appUrl: null == appUrl
          ? _value.appUrl
          : appUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryImpl implements _Repository {
  _$RepositoryImpl(
      {required this.templateImageUrl,
      required this.repositoryTitle,
      required this.writtenLangs,
      required this.platforms,
      required this.appUrlType,
      required this.appUrl});

  factory _$RepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryImplFromJson(json);

  @override
  String templateImageUrl;
  @override
  String repositoryTitle;
  @override
  List<String> writtenLangs;
  @override
  List<String> platforms;
  @override
  TypeOfUrl appUrlType;
  @override
  String appUrl;

  @override
  String toString() {
    return 'Repository(templateImageUrl: $templateImageUrl, repositoryTitle: $repositoryTitle, writtenLangs: $writtenLangs, platforms: $platforms, appUrlType: $appUrlType, appUrl: $appUrl)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      __$$RepositoryImplCopyWithImpl<_$RepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryImplToJson(
      this,
    );
  }
}

abstract class _Repository implements Repository {
  factory _Repository(
      {required String templateImageUrl,
      required String repositoryTitle,
      required List<String> writtenLangs,
      required List<String> platforms,
      required TypeOfUrl appUrlType,
      required String appUrl}) = _$RepositoryImpl;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$RepositoryImpl.fromJson;

  @override
  String get templateImageUrl;
  set templateImageUrl(String value);
  @override
  String get repositoryTitle;
  set repositoryTitle(String value);
  @override
  List<String> get writtenLangs;
  set writtenLangs(List<String> value);
  @override
  List<String> get platforms;
  set platforms(List<String> value);
  @override
  TypeOfUrl get appUrlType;
  set appUrlType(TypeOfUrl value);
  @override
  String get appUrl;
  set appUrl(String value);
  @override
  @JsonKey(ignore: true)
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
