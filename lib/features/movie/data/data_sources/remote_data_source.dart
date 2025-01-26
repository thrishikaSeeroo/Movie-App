import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_details_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';

import 'data_source.dart';

@Injectable(as: DataSource)
class RemoteDataSource extends DataSource {
  @injectable
  final Dio dio;

  RemoteDataSource(this.dio);



  @override
  Future<Either<String, MovieListResponse>> getMovieList() async {
    try {
      final response = await dio.get("movie/popular");

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
  Future<Either<String, MovieListResponse>> getFavoriteMovies({required int accountId}) async {
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
  Future<Either<String, MovieListResponse>> getWatchListMovies({required int accountId}) async {
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
  Future<Either<String, MovieDetailsResponse>> getMovieDetails({required int movieId}) async {
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

}
