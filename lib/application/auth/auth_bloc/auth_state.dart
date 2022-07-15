part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.Loading() = _AuthstateLoading;
  const factory AuthState.authenticated({required UserEntity user}) = _Authenticated;
  const factory AuthState.notAuthenticated() = _NotAuthenticated;
  const factory AuthState.error() = _Error;
}
