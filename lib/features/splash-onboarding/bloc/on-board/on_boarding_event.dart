part of 'on_boarding_bloc.dart';

@immutable
sealed class OnBoardingEvent {}
class ChangePageEvent extends OnBoardingEvent{
  final int currentIndex;

  ChangePageEvent({required this.currentIndex});

}