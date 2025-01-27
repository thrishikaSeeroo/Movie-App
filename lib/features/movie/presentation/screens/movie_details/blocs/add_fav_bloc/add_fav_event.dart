part of 'add_fav_bloc.dart';

@freezed
class AddFavEvent with _$AddFavEvent {
  const factory AddFavEvent.fetch({required int accountId, required int mediaId,
    required String mediaType, required bool favorite}) = _Fetch;
}
