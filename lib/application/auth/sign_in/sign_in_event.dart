part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory SignInEvent.passwordChanged(String passwordStr) = _PasswordChanged;
  const factory SignInEvent.signIn() = _Signin;
}
