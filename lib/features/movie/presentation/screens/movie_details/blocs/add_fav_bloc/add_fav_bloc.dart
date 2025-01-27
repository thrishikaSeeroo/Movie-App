import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/add_success_response.dart';
import 'package:the_movie_app/features/movie/domain/usecases/add_favorite_usecase.dart';

part 'add_fav_event.dart';
part 'add_fav_state.dart';
part 'add_fav_bloc.freezed.dart';

@injectable
class AddFavBloc extends Bloc<AddFavEvent, AddFavState> {
  final AddFavoriteUseCase useCase;
  AddFavBloc(this.useCase) : super(const AddFavState.initial()) {
    on<AddFavEvent>((event, emit) async {
      await event.when(fetch: (accountId, mediaId, mediaType, favorite) async {
        emit(const AddFavState.loading());
        print("Add Fav bloc called");
        try {
          final response = await useCase.execute(
              accountId: accountId,
              mediaId: mediaId,
              mediaType: mediaType,
              favorite: favorite);
          response.fold((l) {
            print("Add Fav State bloc called $l");
            emit(AddFavState.failed(error: l));
          }, (r) {
            print("Add Fav movie State  bloc called $r");
            emit(AddFavState.success(response: r));
          });
        } catch (e) {
          emit(AddFavState.failed(error: "Error occurred $e"));
        }
      });
    });
  }
}
