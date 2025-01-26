part of 'watchlist_bloc.dart';

@freezed
class WatchlistEvent with _$WatchlistEvent {
  const factory WatchlistEvent.fetch({required int accountId}) = _Fetch;
}
