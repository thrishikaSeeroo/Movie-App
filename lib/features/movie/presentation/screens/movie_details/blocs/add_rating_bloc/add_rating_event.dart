part of 'add_rating_bloc.dart';

@freezed
class AddRatingEvent with _$AddRatingEvent {
  const factory AddRatingEvent.fetch({required int movieId, required double value}) = _Fetch;
}
