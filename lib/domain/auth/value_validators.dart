import 'package:dartz/dartz.dart';
import 'package:uber_clone/domain/core/value_failures/value_failures.dart';

Either<ValueFailure<String>, String> validateEmailAdress(String input) {
  bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(input);
  if (emailValid) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidEmail(input));
  }
}

Either<ValueFailure<String>, String> validateFullName(String input) {
  if (input.isEmpty) {
    return left(ValueFailure<String>.empty(input));
  } else if (input.length > 20) {
    return left(ValueFailure<String>.tooLong(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  bool phoneValid = RegExp(r"^^\d{10}$").hasMatch(input);
  if (phoneValid) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidPhoneNumber(input));
  }
}

Either<ValueFailure<String>, String> validatepassword(String input) {
  bool passwordisvalid =
      RegExp(r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$").hasMatch(input);

  if (input.isEmpty) {
    return left(ValueFailure<String>.empty(input));
  } else if (input.length > 25) {
    return left(ValueFailure<String>.tooLong(input));
  } else if (!passwordisvalid) {
    return left(ValueFailure<String>.invalidPassword(input));
  } else {
    return right(input);
  }
}
