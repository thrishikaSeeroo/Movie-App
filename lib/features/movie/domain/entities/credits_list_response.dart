import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'credits_list_response.freezed.dart';
part 'credits_list_response.g.dart';

CreditsListResponse creditsListResponseFromJson(String str) => CreditsListResponse.fromJson(json.decode(str));

String creditsListResponseToJson(CreditsListResponse data) => json.encode(data.toJson());

@freezed
class CreditsListResponse with _$CreditsListResponse {
  const factory CreditsListResponse({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "cast")
    List<Cast>? cast,
    @JsonKey(name: "crew")
    List<Cast>? crew,
  }) = _CreditsListResponse;

  factory CreditsListResponse.fromJson(Map<String, dynamic> json) => _$CreditsListResponseFromJson(json);
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    @JsonKey(name: "adult")
    bool? adult,
    @JsonKey(name: "gender")
    int? gender,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "known_for_department")
    String? knownForDepartment,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "original_name")
    String? originalName,
    @JsonKey(name: "popularity")
    double? popularity,
    @JsonKey(name: "profile_path")
    String? profilePath,
    @JsonKey(name: "cast_id")
    int? castId,
    @JsonKey(name: "character")
    String? character,
    @JsonKey(name: "credit_id")
    String? creditId,
    @JsonKey(name: "order")
    int? order,
    @JsonKey(name: "department")
    String? department,
    @JsonKey(name: "job")
    String? job,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
