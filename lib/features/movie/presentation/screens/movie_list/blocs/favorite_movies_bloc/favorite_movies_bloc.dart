import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/domain/usecases/favorite_movies_usecase.dart';

part 'favorite_movies_event.dart';
part 'favorite_movies_state.dart';
part 'favorite_movies_bloc.freezed.dart';

@Injectable()
class FavoriteMoviesBloc extends Bloc<FavoriteMoviesEvent, FavoriteMoviesState> {
  final FavoriteMoviesUseCase useCase;
  FavoriteMoviesBloc(this.useCase) : super(const FavoriteMoviesState.initial()) {
    on<FavoriteMoviesEvent>((event, emit) async{
      await event.when(fetch: (accountId) async{
        emit(const FavoriteMoviesState.loading());
        print("FavoriteMovies bloc called");
        try {
          final response = await useCase.execute(accountId: accountId);
          response.fold((l) {
            print("FavoriteMovies bloc called $l");
            emit(FavoriteMoviesState.failed(error: l));},
                  (r) {
                print("FavoriteMovies bloc called $r");
                emit(FavoriteMoviesState.success(response: r));
              });
        } catch (e) {
          emit(FavoriteMoviesState.failed(error: "Error occurred $e"));
        }
      });
    });
  }
}


