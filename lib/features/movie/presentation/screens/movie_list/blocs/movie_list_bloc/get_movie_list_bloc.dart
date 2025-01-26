import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/domain/usecases/movie_list_usecase.dart';

part 'get_movie_list_event.dart';
part 'get_movie_list_state.dart';
part 'get_movie_list_bloc.freezed.dart';

@Injectable()
class GetMovieListBloc extends Bloc<GetMovieListEvent, GetMovieListState> {
  final MovieListUseCase useCase;
  GetMovieListBloc(this.useCase) : super(const GetMovieListState.initial()) {
    on<GetMovieListEvent>((event, emit) async {
      emit(const GetMovieListState.loading());
      try {
        final response = await useCase.execute();
        response.fold((l) => emit(GetMovieListState.failed(error: l)),
                (r) => emit(GetMovieListState.success(response: r)));
      } catch (e) {
        emit(GetMovieListState.failed(error: "Error occurred $e"));
      }
    });
  }
}

