import 'package:dartz/dartz.dart';
import 'package:uber_clone/domain/core/value_failures/value_failures.dart';

Either<ValueFailure<String>, String> validateLocationAdress(String inputAdress) {
  if (inputAdress.isNotEmpty) {
    return right(inputAdress);
  } else {
    return left(ValueFailure.adressisloading());
  }
}
