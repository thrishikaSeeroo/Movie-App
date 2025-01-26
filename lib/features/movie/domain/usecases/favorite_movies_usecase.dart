import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';

@injectable
class FavoriteMoviesUseCase {
  final MovieRepository favoriteMoviesRepository;

  FavoriteMoviesUseCase(this.favoriteMoviesRepository);

  Future<Either<String, MovieListResponse>> execute({required int accountId}) {
    return favoriteMoviesRepository.getFavoriteMovies(accountId);
  }
}