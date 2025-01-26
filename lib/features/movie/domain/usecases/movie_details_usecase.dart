import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_details_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';

@injectable
class MovieDetailsUseCase {
  final MovieRepository movieDetailsRepository;

  MovieDetailsUseCase(this.movieDetailsRepository);

  Future<Either<String, MovieDetailsResponse>> execute({required int movieId}) {
    return movieDetailsRepository.getMovieDetails(movieId: movieId);
  }
}