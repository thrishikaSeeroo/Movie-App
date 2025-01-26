part of 'watchlist_bloc.dart';

@freezed
class WatchlistState with _$WatchlistState {
  const factory WatchlistState.initial() = _Initial;
  const factory WatchlistState.loading() = _Loading;
  const factory WatchlistState.failed({required String error}) = _Failed;
  const factory WatchlistState.success({required MovieListResponse response}) =
  _Success;
}
