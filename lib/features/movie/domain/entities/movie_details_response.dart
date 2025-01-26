import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'movie_details_response.freezed.dart';
part 'movie_details_response.g.dart';

MovieDetailsResponse movieDetailsResponseFromJson(String str) => MovieDetailsResponse.fromJson(json.decode(str));

String movieDetailsResponseToJson(MovieDetailsResponse data) => json.encode(data.toJson());

@freezed
class MovieDetailsResponse with _$MovieDetailsResponse {
  const factory MovieDetailsResponse({
    @JsonKey(name: "adult")
    bool? adult,
    @JsonKey(name: "backdrop_path")
    String? backdropPath,
    @JsonKey(name: "belongs_to_collection")
    BelongsToCollection? belongsToCollection,
    @JsonKey(name: "budget")
    int? budget,
    @JsonKey(name: "genres")
    List<Genre>? genres,
    @JsonKey(name: "homepage")
    String? homepage,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "imdb_id")
    String? imdbId,
    @JsonKey(name: "origin_country")
    List<String>? originCountry,
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
    @JsonKey(name: "production_companies")
    List<ProductionCompany>? productionCompanies,
    @JsonKey(name: "production_countries")
    List<ProductionCountry>? productionCountries,
    @JsonKey(name: "release_date")
    DateTime? releaseDate,
    @JsonKey(name: "revenue")
    int? revenue,
    @JsonKey(name: "runtime")
    int? runtime,
    @JsonKey(name: "spoken_languages")
    List<SpokenLanguage>? spokenLanguages,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "tagline")
    String? tagline,
    @JsonKey(name: "title")
    String? title,
    @JsonKey(name: "video")
    bool? video,
    @JsonKey(name: "vote_average")
    double? voteAverage,
    @JsonKey(name: "vote_count")
    int? voteCount,
  }) = _MovieDetailsResponse;

  factory MovieDetailsResponse.fromJson(Map<String, dynamic> json) => _$MovieDetailsResponseFromJson(json);
}

@freezed
class BelongsToCollection with _$BelongsToCollection {
  const factory BelongsToCollection({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "poster_path")
    String? posterPath,
    @JsonKey(name: "backdrop_path")
    String? backdropPath,
  }) = _BelongsToCollection;

  factory BelongsToCollection.fromJson(Map<String, dynamic> json) => _$BelongsToCollectionFromJson(json);
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
class ProductionCompany with _$ProductionCompany {
  const factory ProductionCompany({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "logo_path")
    String? logoPath,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "origin_country")
    String? originCountry,
  }) = _ProductionCompany;

  factory ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);
}

@freezed
class ProductionCountry with _$ProductionCountry {
  const factory ProductionCountry({
    @JsonKey(name: "iso_3166_1")
    String? iso31661,
    @JsonKey(name: "name")
    String? name,
  }) = _ProductionCountry;

  factory ProductionCountry.fromJson(Map<String, dynamic> json) => _$ProductionCountryFromJson(json);
}

@freezed
class SpokenLanguage with _$SpokenLanguage {
  const factory SpokenLanguage({
    @JsonKey(name: "english_name")
    String? englishName,
    @JsonKey(name: "iso_639_1")
    String? iso6391,
    @JsonKey(name: "name")
    String? name,
  }) = _SpokenLanguage;

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) => _$SpokenLanguageFromJson(json);
}
