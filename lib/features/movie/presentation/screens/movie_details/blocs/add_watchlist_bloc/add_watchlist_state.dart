part of 'add_watchlist_bloc.dart';

@freezed
class AddWatchlistState with _$AddWatchlistState {
  const factory AddWatchlistState.initial() = _Initial;
  const factory AddWatchlistState.loading() = _Loading;
  const factory AddWatchlistState.failed({required String error}) = _Failed;
  const factory AddWatchlistState.success({required AddSuccessResponse response}) =
  _Success;
}
