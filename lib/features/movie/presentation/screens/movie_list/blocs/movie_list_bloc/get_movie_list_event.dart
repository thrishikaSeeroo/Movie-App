part of 'get_movie_list_bloc.dart';

@freezed
class GetMovieListEvent with _$GetMovieListEvent {
  const factory GetMovieListEvent.fetch({required int pageNo}) = _Fetch;
}
