import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/add_success_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';

@injectable
class AddMovieRatingUseCase {
  final MovieRepository addMovieRatingRepository;

  AddMovieRatingUseCase(this.addMovieRatingRepository);

  Future<Either<String, AddSuccessResponse>> execute({required int movieId, required double value}) {
    return addMovieRatingRepository.addMovieRating(movieId: movieId, value: value);
  }
}