// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/domain/auth/I_auth_repository.dart';
import 'package:uber_clone/domain/auth/user_entity.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@Singleton()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  IAuthRepository authRepository;
  AuthBloc(
    this.authRepository,
  ) : super(_Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(AuthState.Loading());
          await emit.forEach(
            authRepository.getCurrentUser(),
            onData: (Option<UserEntity> data) {
              return data.fold(() => AuthState.notAuthenticated(),
                  (user) => AuthState.authenticated(user: user));
            },
            onError: (e, s) => AuthState.error(),
          );
        },
        signout: (e) async {
          emit(AuthState.Loading());
          await authRepository.signout();
          emit(AuthState.notAuthenticated());
        },
      );
    });
  }
}
