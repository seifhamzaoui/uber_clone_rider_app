// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/domain/auth/I_auth_repository.dart';
import 'package:uber_clone/domain/auth/auth_failure.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@Injectable()
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  IAuthRepository _authRepository;
  SignInBloc(
    this._authRepository,
  ) : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) async {
          emit(state.copyWith(emailAdress: EmailAdress(e.emailStr)));
        },
        passwordChanged: (e) async {
          emit(state.copyWith(password: Password(e.passwordStr)));
        },
        signIn: (e) async {
          emit(state.copyWith(isloading: true, authResponseOptionn: none(), showErrors: false));
          bool isValid =
              state.emailAdress.value.andThen(state.password.value).fold((l) => false, (r) => true);
          if (!isValid) {
            emit(state.copyWith(
              showErrors: true,
              isloading: false,
            ));
          } else {
            Either<AuthFailure, Unit> failureOrSuccess = await _authRepository.signIn(
              emailAdress: state.emailAdress,
              password: state.password,
            );
            emit(state.copyWith(
                isloading: false, authResponseOptionn: Some(failureOrSuccess), showErrors: true));
          }
        },
      );
    });
  }
}
