import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'add_success_response.freezed.dart';
part 'add_success_response.g.dart';

AddSuccessResponse addSuccessResponseFromJson(String str) => AddSuccessResponse.fromJson(json.decode(str));

String addSuccessResponseToJson(AddSuccessResponse data) => json.encode(data.toJson());

@freezed
class AddSuccessResponse with _$AddSuccessResponse {
  const factory AddSuccessResponse({
    @JsonKey(name: "success")
    bool? success,
    @JsonKey(name: "status_code")
    int? statusCode,
    @JsonKey(name: "status_message")
    String? statusMessage,
  }) = _AddSuccessResponse;

  factory AddSuccessResponse.fromJson(Map<String, dynamic> json) => _$AddSuccessResponseFromJson(json);
}
