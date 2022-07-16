import 'package:dartz/dartz.dart';
import 'package:uber_clone/domain/core/value_failures/value_failures.dart';
import 'package:uber_clone/domain/core/value_object.dart';
import 'package:uber_clone/domain/location/value_validators.dart';

class LocationAdress extends ValueObject<String> {
  Either<ValueFailure<String>, String> value;

  LocationAdress._(this.value);
  factory LocationAdress(String inputAdress) {
    return LocationAdress._(validateLocationAdress(inputAdress));
  }
}
