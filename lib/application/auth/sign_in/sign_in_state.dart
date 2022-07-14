// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sign_in_bloc.dart';

class SignInState {
  final EmailAdress emailAdress;
  final Password password;
  final bool isloading;
  final bool showErrors;
  final Option<Either<AuthFailure, Unit>> authResponseOptionn;

  SignInState({
    required this.emailAdress,
    required this.password,
    required this.isloading,
    required this.showErrors,
    required this.authResponseOptionn,
  });

  factory SignInState.initial() => SignInState(
        emailAdress: EmailAdress(''),
        password: Password(''),
        isloading: false,
        showErrors: false,
        authResponseOptionn: none(),
      );

  @override
  bool operator ==(covariant SignInState other) {
    if (identical(this, other)) return true;

    return other.emailAdress == emailAdress &&
        other.password == password &&
        other.isloading == isloading &&
        other.showErrors == showErrors &&
        other.authResponseOptionn == authResponseOptionn;
  }

  @override
  int get hashCode {
    return emailAdress.hashCode ^
        password.hashCode ^
        isloading.hashCode ^
        showErrors.hashCode ^
        authResponseOptionn.hashCode;
  }

  SignInState copyWith({
    EmailAdress? emailAdress,
    Password? password,
    bool? isloading,
    bool? showErrors,
    Option<Either<AuthFailure, Unit>>? authResponseOptionn,
  }) {
    return SignInState(
      emailAdress: emailAdress ?? this.emailAdress,
      password: password ?? this.password,
      isloading: isloading ?? this.isloading,
      showErrors: showErrors ?? this.showErrors,
      authResponseOptionn: authResponseOptionn ?? this.authResponseOptionn,
    );
  }
}
