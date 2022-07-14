// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_database/firebase_database.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/register/register_bloc.dart' as _i7;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i8;
import 'domain/auth/I_auth_repository.dart' as _i5;
import 'infrastructure/auth/auth_repository.dart' as _i6;
import 'infrastructure/core/injectable_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.FirebaseAuth>(() => registerModule.auth);
  gh.factory<_i4.FirebaseDatabase>(() => registerModule.database);
  gh.lazySingleton<_i5.IAuthRepository>(() => _i6.AuthRepository());
  gh.factory<_i7.RegisterBloc>(() => _i7.RegisterBloc());
  gh.factory<_i8.SignInBloc>(() => _i8.SignInBloc());
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
