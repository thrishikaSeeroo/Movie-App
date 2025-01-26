part of 'get_movie_details_bloc.dart';

@freezed
class GetMovieDetailsState with _$GetMovieDetailsState {
  const factory GetMovieDetailsState.initial() = _Initial;
  const factory GetMovieDetailsState.loading() = _Loading;
  const factory GetMovieDetailsState.failed({required String error}) = _Failed;
  const factory GetMovieDetailsState.success({required MovieDetailsResponse response}) =
  _Success;
}
