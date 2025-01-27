// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credits_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreditsListResponse _$CreditsListResponseFromJson(Map<String, dynamic> json) {
  return _CreditsListResponse.fromJson(json);
}

/// @nodoc
mixin _$CreditsListResponse {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "cast")
  List<Cast>? get cast => throw _privateConstructorUsedError;
  @JsonKey(name: "crew")
  List<Cast>? get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditsListResponseCopyWith<CreditsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsListResponseCopyWith<$Res> {
  factory $CreditsListResponseCopyWith(
          CreditsListResponse value, $Res Function(CreditsListResponse) then) =
      _$CreditsListResponseCopyWithImpl<$Res, CreditsListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "cast") List<Cast>? cast,
      @JsonKey(name: "crew") List<Cast>? crew});
}

/// @nodoc
class _$CreditsListResponseCopyWithImpl<$Res, $Val extends CreditsListResponse>
    implements $CreditsListResponseCopyWith<$Res> {
  _$CreditsListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      crew: freezed == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditsListResponseImplCopyWith<$Res>
    implements $CreditsListResponseCopyWith<$Res> {
  factory _$$CreditsListResponseImplCopyWith(_$CreditsListResponseImpl value,
          $Res Function(_$CreditsListResponseImpl) then) =
      __$$CreditsListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "cast") List<Cast>? cast,
      @JsonKey(name: "crew") List<Cast>? crew});
}

/// @nodoc
class __$$CreditsListResponseImplCopyWithImpl<$Res>
    extends _$CreditsListResponseCopyWithImpl<$Res, _$CreditsListResponseImpl>
    implements _$$CreditsListResponseImplCopyWith<$Res> {
  __$$CreditsListResponseImplCopyWithImpl(_$CreditsListResponseImpl _value,
      $Res Function(_$CreditsListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_$CreditsListResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      crew: freezed == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditsListResponseImpl implements _CreditsListResponse {
  const _$CreditsListResponseImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "cast") final List<Cast>? cast,
      @JsonKey(name: "crew") final List<Cast>? crew})
      : _cast = cast,
        _crew = crew;

  factory _$CreditsListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditsListResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  final List<Cast>? _cast;
  @override
  @JsonKey(name: "cast")
  List<Cast>? get cast {
    final value = _cast;
    if (value == null) return null;
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Cast>? _crew;
  @override
  @JsonKey(name: "crew")
  List<Cast>? get crew {
    final value = _crew;
    if (value == null) return null;
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreditsListResponse(id: $id, cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditsListResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditsListResponseImplCopyWith<_$CreditsListResponseImpl> get copyWith =>
      __$$CreditsListResponseImplCopyWithImpl<_$CreditsListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditsListResponseImplToJson(
      this,
    );
  }
}

abstract class _CreditsListResponse implements CreditsListResponse {
  const factory _CreditsListResponse(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "cast") final List<Cast>? cast,
          @JsonKey(name: "crew") final List<Cast>? crew}) =
      _$CreditsListResponseImpl;

  factory _CreditsListResponse.fromJson(Map<String, dynamic> json) =
      _$CreditsListResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "cast")
  List<Cast>? get cast;
  @override
  @JsonKey(name: "crew")
  List<Cast>? get crew;
  @override
  @JsonKey(ignore: true)
  _$$CreditsListResponseImplCopyWith<_$CreditsListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  @JsonKey(name: "adult")
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "known_for_department")
  String? get knownForDepartment => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: "cast_id")
  int? get castId => throw _privateConstructorUsedError;
  @JsonKey(name: "character")
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_id")
  String? get creditId => throw _privateConstructorUsedError;
  @JsonKey(name: "order")
  int? get order => throw _privateConstructorUsedError;
  @JsonKey(name: "department")
  String? get department => throw _privateConstructorUsedError;
  @JsonKey(name: "job")
  String? get job => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call(
      {@JsonKey(name: "adult") bool? adult,
      @JsonKey(name: "gender") int? gender,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "known_for_department") String? knownForDepartment,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "profile_path") String? profilePath,
      @JsonKey(name: "cast_id") int? castId,
      @JsonKey(name: "character") String? character,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "order") int? order,
      @JsonKey(name: "department") String? department,
      @JsonKey(name: "job") String? job});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? creditId = freezed,
    Object? order = freezed,
    Object? department = freezed,
    Object? job = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      castId: freezed == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastImplCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$CastImplCopyWith(
          _$CastImpl value, $Res Function(_$CastImpl) then) =
      __$$CastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "adult") bool? adult,
      @JsonKey(name: "gender") int? gender,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "known_for_department") String? knownForDepartment,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "profile_path") String? profilePath,
      @JsonKey(name: "cast_id") int? castId,
      @JsonKey(name: "character") String? character,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "order") int? order,
      @JsonKey(name: "department") String? department,
      @JsonKey(name: "job") String? job});
}

/// @nodoc
class __$$CastImplCopyWithImpl<$Res>
    extends _$CastCopyWithImpl<$Res, _$CastImpl>
    implements _$$CastImplCopyWith<$Res> {
  __$$CastImplCopyWithImpl(_$CastImpl _value, $Res Function(_$CastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? creditId = freezed,
    Object? order = freezed,
    Object? department = freezed,
    Object? job = freezed,
  }) {
    return _then(_$CastImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      castId: freezed == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CastImpl implements _Cast {
  const _$CastImpl(
      {@JsonKey(name: "adult") this.adult,
      @JsonKey(name: "gender") this.gender,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "known_for_department") this.knownForDepartment,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "original_name") this.originalName,
      @JsonKey(name: "popularity") this.popularity,
      @JsonKey(name: "profile_path") this.profilePath,
      @JsonKey(name: "cast_id") this.castId,
      @JsonKey(name: "character") this.character,
      @JsonKey(name: "credit_id") this.creditId,
      @JsonKey(name: "order") this.order,
      @JsonKey(name: "department") this.department,
      @JsonKey(name: "job") this.job});

  factory _$CastImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastImplFromJson(json);

  @override
  @JsonKey(name: "adult")
  final bool? adult;
  @override
  @JsonKey(name: "gender")
  final int? gender;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "known_for_department")
  final String? knownForDepartment;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "original_name")
  final String? originalName;
  @override
  @JsonKey(name: "popularity")
  final double? popularity;
  @override
  @JsonKey(name: "profile_path")
  final String? profilePath;
  @override
  @JsonKey(name: "cast_id")
  final int? castId;
  @override
  @JsonKey(name: "character")
  final String? character;
  @override
  @JsonKey(name: "credit_id")
  final String? creditId;
  @override
  @JsonKey(name: "order")
  final int? order;
  @override
  @JsonKey(name: "department")
  final String? department;
  @override
  @JsonKey(name: "job")
  final String? job;

  @override
  String toString() {
    return 'Cast(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order, department: $department, job: $job)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.castId, castId) || other.castId == castId) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      gender,
      id,
      knownForDepartment,
      name,
      originalName,
      popularity,
      profilePath,
      castId,
      character,
      creditId,
      order,
      department,
      job);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      __$$CastImplCopyWithImpl<_$CastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastImplToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {@JsonKey(name: "adult") final bool? adult,
      @JsonKey(name: "gender") final int? gender,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "known_for_department") final String? knownForDepartment,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "original_name") final String? originalName,
      @JsonKey(name: "popularity") final double? popularity,
      @JsonKey(name: "profile_path") final String? profilePath,
      @JsonKey(name: "cast_id") final int? castId,
      @JsonKey(name: "character") final String? character,
      @JsonKey(name: "credit_id") final String? creditId,
      @JsonKey(name: "order") final int? order,
      @JsonKey(name: "department") final String? department,
      @JsonKey(name: "job") final String? job}) = _$CastImpl;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$CastImpl.fromJson;

  @override
  @JsonKey(name: "adult")
  bool? get adult;
  @override
  @JsonKey(name: "gender")
  int? get gender;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "known_for_department")
  String? get knownForDepartment;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "original_name")
  String? get originalName;
  @override
  @JsonKey(name: "popularity")
  double? get popularity;
  @override
  @JsonKey(name: "profile_path")
  String? get profilePath;
  @override
  @JsonKey(name: "cast_id")
  int? get castId;
  @override
  @JsonKey(name: "character")
  String? get character;
  @override
  @JsonKey(name: "credit_id")
  String? get creditId;
  @override
  @JsonKey(name: "order")
  int? get order;
  @override
  @JsonKey(name: "department")
  String? get department;
  @override
  @JsonKey(name: "job")
  String? get job;
  @override
  @JsonKey(ignore: true)
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
