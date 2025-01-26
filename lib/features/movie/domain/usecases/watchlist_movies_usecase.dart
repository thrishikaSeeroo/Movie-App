import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';

@injectable
class WatchListMoviesUseCase {
  final MovieRepository watchListMoviesRepository;

  WatchListMoviesUseCase(this.watchListMoviesRepository);

  Future<Either<String, MovieListResponse>> execute({required int accountId}) {
    return watchListMoviesRepository.getWatchListMovies(accountId);
  }
}