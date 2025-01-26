import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_details_response.dart';
import 'package:the_movie_app/features/movie/domain/usecases/movie_details_usecase.dart';

part 'get_movie_details_event.dart';
part 'get_movie_details_state.dart';
part 'get_movie_details_bloc.freezed.dart';


@injectable
class GetMovieDetailsBloc extends Bloc<GetMovieDetailsEvent, GetMovieDetailsState> {
  final MovieDetailsUseCase useCase;
  GetMovieDetailsBloc(this.useCase) : super(const GetMovieDetailsState.initial()) {
    on<GetMovieDetailsEvent>((event, emit) async{
      await event.when(fetch: (movieId) async{
        emit(const GetMovieDetailsState.loading());
        print("Movie Details bloc called");
        try {
          final response = await useCase.execute(movieId: movieId);
          response.fold((l) {
            print("Movie Details bloc called $l");
            emit(GetMovieDetailsState.failed(error: l));},
                  (r) {
                print("Movie Details bloc called $r");
                emit(GetMovieDetailsState.success(response: r));
              });
        } catch (e) {
          emit(GetMovieDetailsState.failed(error: "Error occurred $e"));
        }
      });
    });
  }

}
