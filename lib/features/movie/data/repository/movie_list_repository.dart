import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/data/data_sources/data_source.dart';
import 'package:the_movie_app/features/movie/domain/entities/add_success_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/credits_list_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_details_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';


@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final DataSource movieDataSource;

  MovieRepositoryImpl(this.movieDataSource);

  @override
  Future<Either<String, MovieListResponse>> getMovieList({required int pageNo}) async {
    return await movieDataSource.getMovieList(pageNo: pageNo);
  }

  @override
  Future<Either<String, MovieListResponse>> getWatchListMovies(int accountId) async {
    return await movieDataSource.getWatchListMovies(accountId: accountId);
  }

  @override
  Future<Either<String, MovieListResponse>> getFavoriteMovies(int accountId) async {
    return await movieDataSource.getFavoriteMovies(accountId: accountId);
  }

  @override
  Future<Either<String, MovieDetailsResponse>> getMovieDetails({required int movieId}) async {
    return await movieDataSource.getMovieDetails(movieId: movieId);
  }

  @override
  Future<Either<String, CreditsListResponse>> getCreditsDetails({required int movieId}) async {
    return await movieDataSource.getCreditsDetails(movieId: movieId);
  }

  @override
  Future<Either<String, AddSuccessResponse>> addFavoriteMovie({required int accountId, required int mediaId,
    required String mediaType, required bool favorite}) async {
    return await movieDataSource.addFavoriteMovie(accountId: accountId, mediaId: mediaId,
    mediaType: mediaType, favorite: favorite);
  }

  @override
  Future<Either<String, AddSuccessResponse>> addWatchListMovie({required int accountId, required int mediaId,
    required String mediaType, required bool watchlist}) async {
    return await movieDataSource.addWatchListMovie(accountId: accountId, mediaId: mediaId, mediaType: mediaType,
    watchlist: watchlist);
  }

  @override
  Future<Either<String, AddSuccessResponse>> addMovieRating({required int movieId, required double value}) async {
    return await movieDataSource.addMovieRating(movieId: movieId, value: value);
  }
}