import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_rating_event.dart';
part 'add_rating_state.dart';
part 'add_rating_bloc.freezed.dart';

class AddRatingBloc extends Bloc<AddRatingEvent, AddRatingState> {
  AddRatingBloc() : super(const AddRatingState.initial()) {
    on<AddRatingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
