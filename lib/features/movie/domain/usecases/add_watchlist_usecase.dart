import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/add_success_response.dart';
import 'package:the_movie_app/features/movie/domain/repositories/movie_repository.dart';

@injectable
class AddWatchListUseCase {
  final MovieRepository addWatchListMovieRepository;

  AddWatchListUseCase(this.addWatchListMovieRepository);

  Future<Either<String, AddSuccessResponse>> execute({required int accountId, required int mediaId,
    required String mediaType, required bool watchlist }) {

    return addWatchListMovieRepository.addWatchListMovie(accountId: accountId, mediaId: mediaId,
        mediaType: mediaType, watchlist: watchlist);
  }
}