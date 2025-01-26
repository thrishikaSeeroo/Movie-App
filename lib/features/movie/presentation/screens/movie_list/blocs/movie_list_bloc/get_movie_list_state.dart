part of 'get_movie_list_bloc.dart';

@freezed
class GetMovieListState with _$GetMovieListState {
  const factory GetMovieListState.initial() = _Initial;
  const factory GetMovieListState.loading() = _Loading;
  const factory GetMovieListState.failed({required String error}) = _Failed;
  const factory GetMovieListState.success({required MovieListResponse response}) =
  _Success;
}



