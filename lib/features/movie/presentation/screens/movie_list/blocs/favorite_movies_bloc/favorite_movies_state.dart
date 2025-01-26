part of 'favorite_movies_bloc.dart';

@freezed
class FavoriteMoviesState with _$FavoriteMoviesState {
  const factory FavoriteMoviesState.initial() = _Initial;
  const factory FavoriteMoviesState.loading() = _Loading;
  const factory FavoriteMoviesState.failed({required String error}) = _Failed;
  const factory FavoriteMoviesState.success({required MovieListResponse response}) =
  _Success;
}


