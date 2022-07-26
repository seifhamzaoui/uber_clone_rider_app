import 'package:uber_clone/domain/core/value_failures/value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:uber_clone/domain/core/value_object.dart';
import 'package:uber_clone/domain/ride/value_validator.dart';

class DriverId extends ValueObject<String> {
  @override
  // TODO: implement value
  Either<ValueFailure<String>, String> value;

  DriverId._(this.value);

  factory DriverId(String id) {
    return DriverId._(validateDriverId(id));
  }
}
