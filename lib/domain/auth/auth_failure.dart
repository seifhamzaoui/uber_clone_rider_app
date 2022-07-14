import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      _InvalidEmailAndPasswordCombination;
  const factory AuthFailure.emailAlreadyinUse() = _EmailAlreadyinUse;
  const factory AuthFailure.dataInvalid() = _DataInvalid;
  const factory AuthFailure.serverError() = _ServerError;
}
