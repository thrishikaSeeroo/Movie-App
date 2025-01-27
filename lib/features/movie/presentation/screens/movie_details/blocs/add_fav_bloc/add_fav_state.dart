part of 'add_fav_bloc.dart';

@freezed
class AddFavState with _$AddFavState {
  const factory AddFavState.initial() = _Initial;
  const factory AddFavState.loading() = _Loading;
  const factory AddFavState.failed({required String error}) = _Failed;
  const factory AddFavState.success({required AddSuccessResponse response}) =
  _Success;
}
