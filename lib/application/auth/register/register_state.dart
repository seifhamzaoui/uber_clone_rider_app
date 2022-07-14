// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

class RegisterState {
  const RegisterState({
    required this.emailAdress,
    required this.password,
    required this.phoneNumber,
    required this.fullName,
    required this.showErrors,
    required this.failureorsuccess,
  });

  final EmailAdress emailAdress;
  final Password password;
  final PhoneNumber phoneNumber;
  final FullName fullName;
  final bool showErrors;
  final Option<Either<AuthFailure, Unit>> failureorsuccess;

  factory RegisterState.initial() => RegisterState(
        emailAdress: EmailAdress(''),
        password: Password(''),
        phoneNumber: PhoneNumber(''),
        fullName: FullName(''),
        showErrors: false,
        failureorsuccess: none(),
      );

  @override
  bool operator ==(covariant RegisterState other) {
    if (identical(this, other)) return true;

    return other.emailAdress == emailAdress &&
        other.password == password &&
        other.phoneNumber == phoneNumber &&
        other.fullName == fullName &&
        other.showErrors == showErrors &&
        other.failureorsuccess == failureorsuccess;
  }

  @override
  int get hashCode {
    return emailAdress.hashCode ^
        password.hashCode ^
        phoneNumber.hashCode ^
        fullName.hashCode ^
        showErrors.hashCode ^
        failureorsuccess.hashCode;
  }

  @override
  String toString() {
    return 'RegisterState(emailAdress: $emailAdress, password: $password, phoneNumber: $phoneNumber, fullName: $fullName, showErrors: $showErrors, failureorsuccess: $failureorsuccess)';
  }

  RegisterState copyWith({
    EmailAdress? emailAdress,
    Password? password,
    PhoneNumber? phoneNumber,
    FullName? fullName,
    bool? showErrors,
    Option<Either<AuthFailure, Unit>>? failureorsuccess,
  }) {
    return RegisterState(
      emailAdress: emailAdress ?? this.emailAdress,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      fullName: fullName ?? this.fullName,
      showErrors: showErrors ?? this.showErrors,
      failureorsuccess: failureorsuccess ?? this.failureorsuccess,
    );
  }
}
