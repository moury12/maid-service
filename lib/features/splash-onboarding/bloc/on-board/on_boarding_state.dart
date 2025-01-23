part of 'on_boarding_bloc.dart';

@immutable
sealed class OnBoardingState {}

final class OnBoardingInitial extends OnBoardingState {
  final int currentIndex;

  OnBoardingInitial({ this.currentIndex=0});

}
final class OnBoardingChangeState extends OnBoardingState {
  final int currentIndex;

  OnBoardingChangeState({ this.currentIndex=0});
}
