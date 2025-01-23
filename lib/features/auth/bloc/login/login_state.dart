part of 'login_bloc.dart';

@immutable
sealed class LoginState {

}

final class LoginInitial extends LoginState {
  final bool isChecked;
  LoginInitial({this.isChecked = false});
}
final class CheckedState extends LoginState{
  final bool isChecked;

  CheckedState({required this.isChecked});
}
