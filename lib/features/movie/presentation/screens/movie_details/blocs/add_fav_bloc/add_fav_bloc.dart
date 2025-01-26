import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_fav_event.dart';
part 'add_fav_state.dart';
part 'add_fav_bloc.freezed.dart';

class AddFavBloc extends Bloc<AddFavEvent, AddFavState> {
  AddFavBloc() : super(const AddFavState.initial()) {
    on<AddFavEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
