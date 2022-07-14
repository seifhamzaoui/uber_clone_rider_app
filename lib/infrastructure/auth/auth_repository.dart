import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uber_clone/domain/auth/I_auth_repository.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/auth/auth_failure.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  @override
  Either<AuthFailure, Unit> register(
      {required EmailAdress emailAdress,
      required Password password,
      required PhoneNumber phoneNumber,
      required FullName fullName}) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Either<AuthFailure, Unit> signIn({required EmailAdress emailAdress, required Password password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
