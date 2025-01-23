import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(OnBoardingInitial()) {
    on<ChangePageEvent>((event, emit) {
     emit(OnBoardingChangeState(currentIndex: event.currentIndex));
    });
  }
}
