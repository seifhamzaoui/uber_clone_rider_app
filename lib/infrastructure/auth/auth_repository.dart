// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/domain/auth/I_auth_repository.dart';
import 'package:uber_clone/domain/auth/auth_failure.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/infrastructure/auth/register.dto.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  FirebaseAuth _auth;
  FirebaseDatabase _database;
  AuthRepository(
    this._auth,
    this._database,
  );
  @override
  Future<Either<AuthFailure, Unit>> register(
      {required EmailAdress emailAdress,
      required Password password,
      required PhoneNumber phoneNumber,
      required FullName fullName}) async {
    try {
      User? authUser = (await _auth.createUserWithEmailAndPassword(
              email: emailAdress.getOrCrash(), password: password.getOrCrash()))
          .user;
      RegisterDto registerDto = RegisterDto(
        userId: authUser?.uid ?? '',
        fullName: fullName.getOrCrash(),
        email: emailAdress.getOrCrash(),
        phone: phoneNumber.getOrCrash(),
      );

      await _database.ref().child('/users/${authUser?.uid}').set(registerDto.toJson());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use')
        return left(AuthFailure.emailAlreadyinUse());
      else if (e.code == 'invalid-email')
        return left(AuthFailure.dataInvalid());
      else
        return left(AuthFailure.serverError());
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn(
      {required EmailAdress emailAdress, required Password password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
