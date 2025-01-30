part of 'switch_bloc.dart';

@immutable
sealed class SwitchState {}

final class SwitchInitial extends SwitchState {
  final bool switchValue;

  SwitchInitial({ this.switchValue=false});
}
final class SwitchLoadedState extends SwitchState {
  final bool switchValue;

  SwitchLoadedState({ required this.switchValue});
}
