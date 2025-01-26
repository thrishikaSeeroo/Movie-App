import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_watchlist_event.dart';
part 'add_watchlist_state.dart';
part 'add_watchlist_bloc.freezed.dart';

class AddWatchlistBloc extends Bloc<AddWatchlistEvent, AddWatchlistState> {
  AddWatchlistBloc() : super(const AddWatchlistState.initial()) {
    on<AddWatchlistEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
