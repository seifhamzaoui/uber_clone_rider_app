part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.fullnameChanged(String fullnameStr) = _FullnameChanged;
  const factory RegisterEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory RegisterEvent.phoneNumberChanged(String phoneStr) = _PhoneNumberChanged;
  const factory RegisterEvent.passwordChanged(String passwordStr) = _PasswordChanged;
  const factory RegisterEvent.register() = _Register;
}
