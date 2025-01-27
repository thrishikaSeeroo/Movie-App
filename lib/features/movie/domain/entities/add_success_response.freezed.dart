// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddSuccessResponse _$AddSuccessResponseFromJson(Map<String, dynamic> json) {
  return _AddSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$AddSuccessResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  int? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "status_message")
  String? get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddSuccessResponseCopyWith<AddSuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSuccessResponseCopyWith<$Res> {
  factory $AddSuccessResponseCopyWith(
          AddSuccessResponse value, $Res Function(AddSuccessResponse) then) =
      _$AddSuccessResponseCopyWithImpl<$Res, AddSuccessResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "status_code") int? statusCode,
      @JsonKey(name: "status_message") String? statusMessage});
}

/// @nodoc
class _$AddSuccessResponseCopyWithImpl<$Res, $Val extends AddSuccessResponse>
    implements $AddSuccessResponseCopyWith<$Res> {
  _$AddSuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddSuccessResponseImplCopyWith<$Res>
    implements $AddSuccessResponseCopyWith<$Res> {
  factory _$$AddSuccessResponseImplCopyWith(_$AddSuccessResponseImpl value,
          $Res Function(_$AddSuccessResponseImpl) then) =
      __$$AddSuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "status_code") int? statusCode,
      @JsonKey(name: "status_message") String? statusMessage});
}

/// @nodoc
class __$$AddSuccessResponseImplCopyWithImpl<$Res>
    extends _$AddSuccessResponseCopyWithImpl<$Res, _$AddSuccessResponseImpl>
    implements _$$AddSuccessResponseImplCopyWith<$Res> {
  __$$AddSuccessResponseImplCopyWithImpl(_$AddSuccessResponseImpl _value,
      $Res Function(_$AddSuccessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_$AddSuccessResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddSuccessResponseImpl implements _AddSuccessResponse {
  const _$AddSuccessResponseImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "status_code") this.statusCode,
      @JsonKey(name: "status_message") this.statusMessage});

  factory _$AddSuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddSuccessResponseImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "status_code")
  final int? statusCode;
  @override
  @JsonKey(name: "status_message")
  final String? statusMessage;

  @override
  String toString() {
    return 'AddSuccessResponse(success: $success, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSuccessResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, statusCode, statusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSuccessResponseImplCopyWith<_$AddSuccessResponseImpl> get copyWith =>
      __$$AddSuccessResponseImplCopyWithImpl<_$AddSuccessResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _AddSuccessResponse implements AddSuccessResponse {
  const factory _AddSuccessResponse(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "status_code") final int? statusCode,
          @JsonKey(name: "status_message") final String? statusMessage}) =
      _$AddSuccessResponseImpl;

  factory _AddSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$AddSuccessResponseImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "status_code")
  int? get statusCode;
  @override
  @JsonKey(name: "status_message")
  String? get statusMessage;
  @override
  @JsonKey(ignore: true)
  _$$AddSuccessResponseImplCopyWith<_$AddSuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
