import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/add_success_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';

@injectable
class AddFavoriteUseCase {
  final MovieRepository addFavoriteMovieRepository;

  AddFavoriteUseCase(this.addFavoriteMovieRepository);

  Future<Either<String, AddSuccessResponse>> execute({required int accountId, required int mediaId,
    required String mediaType, required bool favorite }) {
    return addFavoriteMovieRepository.addFavoriteMovie(accountId: accountId, mediaId: mediaId,
        mediaType: mediaType, favorite: favorite);
  }
}