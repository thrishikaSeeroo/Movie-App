import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/features/movie/domain/entities/credits_list_response.dart';
import 'package:the_movie_app/features/movie/domain/usecases/credits_details_usecase.dart';

part 'credit_details_event.dart';
part 'credit_details_state.dart';
part 'credit_details_bloc.freezed.dart';

@injectable
class CreditDetailsBloc extends Bloc<CreditDetailsEvent, CreditDetailsState> {
  final CreditsDetailsUseCase useCase;
  CreditDetailsBloc(this.useCase) : super(const CreditDetailsState.initial()) {
    on<CreditDetailsEvent>((event, emit) async{
      await event.when(fetch: (movieId) async{
      emit(const CreditDetailsState.loading());
      print("Credits Details bloc called");
      try {
        final response = await useCase.execute(movieId: movieId);
        response.fold((l) {
          print("Credits Details bloc called $l");
          emit(CreditDetailsState.failed(error: l));},
                (r) {
              print("Credits Details bloc called $r");
              emit(CreditDetailsState.success(response: r));
            });
      } catch (e) {
        emit(CreditDetailsState.failed(error: "Error occurred $e"));
      }
    });
  });
  }
}
