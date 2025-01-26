import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'movie_list_response.freezed.dart';
part 'movie_list_response.g.dart';

MovieListResponse movieListResponseFromJson(String str) => MovieListResponse.fromJson(json.decode(str));

String movieListResponseToJson(MovieListResponse data) => json.encode(data.toJson());

@freezed
class MovieListResponse with _$MovieListResponse {
  const factory MovieListResponse({
    @JsonKey(name: "page")
    int? page,
    @JsonKey(name: "results")
    List<Result>? results,
    @JsonKey(name: "total_pages")
    int? totalPages,
    @JsonKey(name: "total_results")
    int? totalResults,
  }) = _MovieListResponse;

  factory MovieListResponse.fromJson(Map<String, dynamic> json) => _$MovieListResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: "adult")
    bool? adult,
    @JsonKey(name: "backdrop_path")
    String? backdropPath,
    @JsonKey(name: "genre_ids")
    List<int>? genreIds,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "original_language")
    String? originalLanguage,
    @JsonKey(name: "original_title")
    String? originalTitle,
    @JsonKey(name: "overview")
    String? overview,
    @JsonKey(name: "popularity")
    double? popularity,
    @JsonKey(name: "poster_path")
    String? posterPath,
    @JsonKey(name: "release_date")
    DateTime? releaseDate,
    @JsonKey(name: "title")
    String? title,
    @JsonKey(name: "video")
    bool? video,
    @JsonKey(name: "vote_average")
    double? voteAverage,
    @JsonKey(name: "vote_count")
    int? voteCount,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
