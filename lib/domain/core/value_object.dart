import 'package:dartz/dartz.dart';
import 'package:uber_clone/domain/core/value_failures/value_failures.dart';

abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;
  const ValueObject();

  @override
  String toString() => 'ValueObject(value:)';

  @override
  bool operator ==(covariant ValueObject<T> other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  T getOrCrash() => value.fold((l) => throw Error(), (r) => r);
  bool isValid() => value.isRight();
}
