import 'package:fpdart/fpdart.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_details_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';

abstract class MovieRepository {
  Future<Either<String, MovieListResponse>> getMovieList();
  Future<Either<String, MovieListResponse>> getFavoriteMovies(int accountId);
  Future<Either<String, MovieListResponse>> getWatchListMovies(int accountId);
  Future<Either<String, MovieDetailsResponse>> getMovieDetails({required int movieId});
}

