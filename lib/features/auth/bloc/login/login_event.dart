part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}
 class CheckBoxEvent extends LoginEvent{
  final bool isChecked;

  CheckBoxEvent({required this.isChecked});
 }