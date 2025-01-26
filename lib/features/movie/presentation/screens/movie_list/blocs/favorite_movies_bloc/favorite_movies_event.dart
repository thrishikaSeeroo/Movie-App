part of 'favorite_movies_bloc.dart';

@freezed
class FavoriteMoviesEvent with _$FavoriteMoviesEvent {
  const factory FavoriteMoviesEvent.fetch({required int accountId}) = _Fetch;
}
