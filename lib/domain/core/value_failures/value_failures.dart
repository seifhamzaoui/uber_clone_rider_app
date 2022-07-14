import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  factory ValueFailure.empty(T value) = _Empty;
  factory ValueFailure.tooLong(T value) = _TooLong;
  factory ValueFailure.invalidEmail(T value) = _InvalidEmail;
  factory ValueFailure.invalidPassword(T value) = _InvalidPassword;
  factory ValueFailure.invalidPhoneNumber(T value) = _InvalidPhoneNumber;
}
