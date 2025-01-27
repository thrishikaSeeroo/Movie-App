import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/add_success_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/credits_list_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_details_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';

import 'data_source.dart';

@Injectable(as: DataSource)
class RemoteDataSource extends DataSource {
  @injectable
  final Dio dio;

  RemoteDataSource(this.dio);

  @override
  Future<Either<String, MovieListResponse>> getMovieList(
      {required int pageNo}) async {
    try {
      final response =
          await dio.get("movie/popular", queryParameters: {'page': pageNo});

      if (response.statusCode == 200 && response.data != null) {
        return Right(MovieListResponse.fromJson(response.data));
      } else {
        return const Left("Received Error response");
      }
    } catch (e) {
      return const Left("Exception Occurred while fetching users");
    }
  }

  @override
  Future<Either<String, MovieListResponse>> getFavoriteMovies(
      {required int accountId}) async {
    try {
      final response = await dio.get("account/$accountId/favorite/movies");

      if (response.statusCode == 200 && response.data != null) {
        return Right(MovieListResponse.fromJson(response.data));
      } else {
        return const Left("Received Error response");
      }
    } catch (e) {
      return const Left("Exception Occurred while fetching users");
    }
  }

  @override
  Future<Either<String, MovieListResponse>> getWatchListMovies(
      {required int accountId}) async {
    try {
      final response = await dio.get("account/$accountId/watchlist/movies");

      if (response.statusCode == 200 && response.data != null) {
        return Right(MovieListResponse.fromJson(response.data));
      } else {
        return const Left("Received Error response");
      }
    } catch (e) {
      return const Left("Exception Occurred while fetching users");
    }
  }

  @override
  Future<Either<String, MovieDetailsResponse>> getMovieDetails(
      {required int movieId}) async {
    try {
      final response = await dio.get("/movie/$movieId");

      if (response.statusCode == 200 && response.data != null) {
        return Right(MovieDetailsResponse.fromJson(response.data));
      } else {
        return const Left("Received Error response");
      }
    } catch (e) {
      return const Left("Exception Occurred while fetching users");
    }
  }

  @override
  Future<Either<String, CreditsListResponse>> getCreditsDetails(
      {required int movieId}) async {
    try {
      final response = await dio.get("/movie/$movieId/credits");

      if (response.statusCode == 200 && response.data != null) {
        return Right(CreditsListResponse.fromJson(response.data));
      } else {
        return const Left("Received Error response");
      }
    } catch (e) {
      return const Left("Exception Occurred while fetching users");
    }
  }

  @override
  Future<Either<String, AddSuccessResponse>> addFavoriteMovie(
      {required int accountId,
      required int mediaId,
      required String mediaType,
      required bool favorite}) async {
    try {
      var formData = FormData.fromMap(
          {"media_type": mediaType, "media_id": mediaId, "favorite": favorite});
      final response =
          await dio.post("/account/$accountId/favorite", data: formData);

      if (response.statusCode == 200 && response.data != null) {
        return Right(AddSuccessResponse.fromJson(response.data));
      } else {
        return const Left("Received Error response");
      }
    } catch (e) {
      return const Left("Exception Occurred while fetching users");
    }
  }

  @override
  Future<Either<String, AddSuccessResponse>> addWatchListMovie(
      {required int accountId,
      required int mediaId,
      required String mediaType,
      required bool watchlist}) async {
    try {
      var formData = FormData.fromMap({
        "media_type": mediaType,
        "media_id": mediaId,
        "watchlist": watchlist
      });
      final response =
          await dio.post("account/$accountId/watchlist", data: formData);

      if (response.statusCode == 200 && response.data != null) {
        return Right(AddSuccessResponse.fromJson(response.data));
      } else {
        return const Left("Received Error response");
      }
    } catch (e) {
      return const Left("Exception Occurred while fetching users");
    }
  }

  @override
  Future<Either<String, AddSuccessResponse>> addMovieRating(
      {required int movieId, required double value}) async {
    try {
      var formData = FormData.fromMap({
        "value": value,
      });
      final response = await dio.post("movie/$movieId/rating", data: formData);

      if (response.statusCode == 200 && response.data != null) {
        return Right(AddSuccessResponse.fromJson(response.data));
      } else {
        return const Left("Received Error response");
      }
    } catch (e) {
      return const Left("Exception Occurred while fetching users");
    }
  }
}
