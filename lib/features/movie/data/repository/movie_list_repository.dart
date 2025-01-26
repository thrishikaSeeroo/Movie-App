import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/data/data_sources/data_source.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_details_response.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';


@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final DataSource movieDataSource;

  MovieRepositoryImpl(this.movieDataSource);

  @override
  Future<Either<String, MovieListResponse>> getMovieList() async {
    return await movieDataSource.getMovieList();
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
}