part of 'add_watchlist_bloc.dart';

@freezed
class AddWatchlistEvent with _$AddWatchlistEvent {
  const factory AddWatchlistEvent.fetch({required int accountId, required int mediaId,
    required String mediaType, required bool watchlist}) = _Fetch;
}
