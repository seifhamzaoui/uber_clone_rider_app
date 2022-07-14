import 'package:dartz/dartz.dart';
import 'package:uber_clone/domain/auth/auth_failure.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signIn({
    required EmailAdress emailAdress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> register({
    required EmailAdress emailAdress,
    required Password password,
    required PhoneNumber phoneNumber,
    required FullName fullName,
  });
}
