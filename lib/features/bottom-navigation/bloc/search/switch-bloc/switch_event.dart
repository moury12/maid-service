part of 'switch_bloc.dart';

@immutable
sealed class SwitchEvent {}

class SwitchTiggerEvent extends SwitchEvent{
  final bool value;

  SwitchTiggerEvent({ this.value=false});
}
