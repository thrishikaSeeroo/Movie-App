import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_details_event.dart';
part 'credit_details_state.dart';
part 'credit_details_bloc.freezed.dart';

class CreditDetailsBloc extends Bloc<CreditDetailsEvent, CreditDetailsState> {
  CreditDetailsBloc() : super(const CreditDetailsState.initial()) {
    on<CreditDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
