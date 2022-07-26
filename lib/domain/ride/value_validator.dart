import 'package:dartz/dartz.dart';
import 'package:uber_clone/domain/core/value_failures/value_failures.dart';

Either<ValueFailure<String>, String> validateDriverId(String id) {
  if (id.isEmpty) {
    return left(ValueFailure.noDriver());
  } else if (id == 'completed') {
    return left(ValueFailure.rideCompleted());
  } else {
    return right(id);
  }
}
