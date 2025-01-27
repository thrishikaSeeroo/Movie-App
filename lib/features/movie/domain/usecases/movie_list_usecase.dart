import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';

@injectable
class MovieListUseCase {
  final MovieRepository movieRepository;

  MovieListUseCase(this.movieRepository);

  Future<Either<String, MovieListResponse>> execute({required int pageNo}) {
    return movieRepository.getMovieList(pageNo: pageNo);
  }
}