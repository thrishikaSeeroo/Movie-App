import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/domain/usecases/watchlist_movies_usecase.dart';

part 'watchlist_event.dart';
part 'watchlist_state.dart';
part 'watchlist_bloc.freezed.dart';

@injectable
class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  final WatchListMoviesUseCase useCase;
  WatchlistBloc(this.useCase) : super(const WatchlistState.initial()) {
    on<WatchlistEvent>((event, emit) async{
      await event.when(fetch: (accountId) async{
        emit(const WatchlistState.loading());
        print("WatchListMovies bloc called");
        try {
          final response = await useCase.execute(accountId: accountId);
          response.fold((l) {
            print("WatchListMovies bloc called $l");
            emit(WatchlistState.failed(error: l));},
                  (r) {
                print("FavoriteMovies bloc called $r");
                emit(WatchlistState.success(response: r));
              });
        } catch (e) {
          emit(WatchlistState.failed(error: "Error occurred $e"));
        }
      });
    });
  }
}




