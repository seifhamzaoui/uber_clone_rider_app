import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uber_clone/domain/auth/value_validators.dart';
import 'package:uber_clone/domain/core/value_failures/value_failures.dart';
import 'package:uber_clone/domain/core/value_object.dart';

class EmailAdress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  EmailAdress._(this.value);

  factory EmailAdress(String inputEmailAdress) {
    return EmailAdress._(validateEmailAdress(inputEmailAdress));
  }
}

class FullName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  FullName._(this.value);

  factory FullName(String inputFullName) {
    return FullName._(validateFullName(inputFullName));
  }
}

class PhoneNumber extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  PhoneNumber._(this.value);

  factory PhoneNumber(String inputFullName) {
    return PhoneNumber._(validatePhoneNumber(inputFullName));
  }
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  Password._(this.value);

  factory Password(String inputFullName) {
    return Password._(validatepassword(inputFullName));
  }
}
