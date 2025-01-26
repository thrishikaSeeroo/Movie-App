part of 'get_movie_details_bloc.dart';

@freezed
class GetMovieDetailsEvent with _$GetMovieDetailsEvent {
  const factory GetMovieDetailsEvent.fetch({required int movieId}) = _Fetch;
}
