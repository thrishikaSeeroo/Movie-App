part of 'add_rating_bloc.dart';

@freezed
class AddRatingEvent with _$AddRatingEvent {
  const factory AddRatingEvent.started() = _Started;
}
