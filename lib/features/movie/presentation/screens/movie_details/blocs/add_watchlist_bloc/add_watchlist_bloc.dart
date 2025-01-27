import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/add_success_response.dart';
import 'package:the_movie_app/features/movie/domain/usecases/add_watchlist_usecase.dart';

part 'add_watchlist_event.dart';
part 'add_watchlist_state.dart';
part 'add_watchlist_bloc.freezed.dart';

@injectable
class AddWatchlistBloc extends Bloc<AddWatchlistEvent, AddWatchlistState> {
  final AddWatchListUseCase useCase;
  AddWatchlistBloc(this.useCase) : super(const AddWatchlistState.initial()) {
    on<AddWatchlistEvent>((event, emit) async{
      await event.when(fetch: (accountId, mediaId, mediaType, watchlist) async{
        emit(const AddWatchlistState.loading());
        print("Add Watchlist bloc called");
        try {
          final response = await useCase.execute(accountId: accountId, mediaId: mediaId,
              mediaType: mediaType, watchlist: watchlist);
          response.fold((l) {
            print("Add WatchList State bloc called $l");
            emit(AddWatchlistState.failed(error: l));},
                  (r) {
                print("Add FaWatchList movie State  bloc called $r");
                emit(AddWatchlistState.success(response: r));
              });
        } catch (e) {
          emit(AddWatchlistState.failed(error: "Error occurred $e"));
        }
      });
    });
  }


}



