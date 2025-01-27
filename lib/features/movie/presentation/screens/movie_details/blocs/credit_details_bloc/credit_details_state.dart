part of 'credit_details_bloc.dart';

@freezed
class CreditDetailsState with _$CreditDetailsState {
  const factory CreditDetailsState.initial() = _Initial;
  const factory CreditDetailsState.loading() = _Loading;
  const factory CreditDetailsState.failed({required String error}) = _Failed;
  const factory CreditDetailsState.success({required CreditsListResponse response}) =
  _Success;
}
