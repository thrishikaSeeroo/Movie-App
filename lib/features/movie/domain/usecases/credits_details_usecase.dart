import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/credits_list_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';

@injectable
class CreditsDetailsUseCase {
  final MovieRepository creditsDetailsRepository;

  CreditsDetailsUseCase(this.creditsDetailsRepository);

  Future<Either<String, CreditsListResponse>> execute({required int movieId}) {
    return creditsDetailsRepository.getCreditsDetails(movieId: movieId);
  }
}