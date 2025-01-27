// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddSuccessResponseImpl _$$AddSuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddSuccessResponseImpl(
      success: json['success'] as bool?,
      statusCode: (json['status_code'] as num?)?.toInt(),
      statusMessage: json['status_message'] as String?,
    );

Map<String, dynamic> _$$AddSuccessResponseImplToJson(
        _$AddSuccessResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.statusCode,
      'status_message': instance.statusMessage,
    };
