part of 'credit_details_bloc.dart';

@freezed
class CreditDetailsEvent with _$CreditDetailsEvent {
  const factory CreditDetailsEvent.fetch({required int movieId}) = _Fetch;
}
