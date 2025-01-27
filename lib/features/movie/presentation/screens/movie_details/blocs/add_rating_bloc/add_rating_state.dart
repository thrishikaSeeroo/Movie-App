part of 'add_rating_bloc.dart';

@freezed
class AddRatingState with _$AddRatingState {
  const factory AddRatingState.initial() = _Initial;
  const factory AddRatingState.loading() = _Loading;
  const factory AddRatingState.failed({required String error}) = _Failed;
  const factory AddRatingState.success({required AddSuccessResponse response}) =
  _Success;
}
