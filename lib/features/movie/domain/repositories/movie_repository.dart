import 'package:fpdart/fpdart.dart';
import 'package:the_movie_app/features/movie/domain/entities/add_success_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/credits_list_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_details_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';

abstract class MovieRepository {
  Future<Either<String, MovieListResponse>> getMovieList({required int pageNo});
  Future<Either<String, MovieListResponse>> getFavoriteMovies(int accountId);
  Future<Either<String, MovieListResponse>> getWatchListMovies(int accountId);
  Future<Either<String, MovieDetailsResponse>> getMovieDetails({required int movieId});
  Future<Either<String, CreditsListResponse>> getCreditsDetails({required int movieId});
  Future<Either<String, AddSuccessResponse>> addFavoriteMovie({required int accountId, required int mediaId,
    required String mediaType, required bool favorite});
  Future<Either<String, AddSuccessResponse>> addWatchListMovie({required int accountId, required int mediaId,
    required String mediaType, required bool watchlist});
  Future<Either<String, AddSuccessResponse>> addMovieRating({required int movieId, required double value});
}

