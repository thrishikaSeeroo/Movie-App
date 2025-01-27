import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/add_success_response.dart';
import 'package:the_movie_app/features/movie/domain/usecases/add_rating_usecase.dart';

part 'add_rating_event.dart';
part 'add_rating_state.dart';
part 'add_rating_bloc.freezed.dart';

@injectable
class AddRatingBloc extends Bloc<AddRatingEvent, AddRatingState> {

  final AddMovieRatingUseCase useCase;
  AddRatingBloc(this.useCase) : super(const AddRatingState.initial()) {
    on<AddRatingEvent>((event, emit) async{
      await event.when(fetch: (movieId, value) async{
        emit(const AddRatingState.loading());
        print("Add Rating bloc called");
        try {
          final response = await useCase.execute(movieId: movieId, value: value);
          response.fold((l) {
            print("Add Rating State bloc called $l");
            emit(AddRatingState.failed(error: l));},
                  (r) {
                print("Add Rating movie State  bloc called $r");
                emit(AddRatingState.success(response: r));
              });
        } catch (e) {
          emit(AddRatingState.failed(error: "Error occurred $e"));
        }
      });
    });
  }
}
