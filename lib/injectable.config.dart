// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_database/firebase_database.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc/auth_bloc.dart' as _i12;
import 'application/auth/register/register_bloc.dart' as _i10;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i11;
import 'application/location/get_location/get_location_bloc.dart' as _i6;
import 'application/location/map_controller/map_controller_bloc.dart' as _i15;
import 'application/location/search_destination/search_destination_bloc.dart'
    as _i16;
import 'domain/auth/I_auth_repository.dart' as _i7;
import 'domain/location/I_location_reository.dart' as _i13;
import 'infrastructure/auth/auth_repository.dart' as _i8;
import 'infrastructure/core/injectable_module.dart' as _i17;
import 'infrastructure/location/location_data_source.dart' as _i9;
import 'infrastructure/location/location_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.factory<_i4.FirebaseAuth>(() => registerModule.auth);
  gh.factory<_i5.FirebaseDatabase>(() => registerModule.database);
  gh.factory<_i6.GetLocationBloc>(() => _i6.GetLocationBloc());
  gh.lazySingleton<_i7.IAuthRepository>(() =>
      _i8.AuthRepository(get<_i4.FirebaseAuth>(), get<_i5.FirebaseDatabase>()));
  gh.factory<_i9.LocationFromGeoCoding>(
      () => _i9.LocationFromGeoCoding(get<_i3.Dio>()));
  gh.factory<_i10.RegisterBloc>(
      () => _i10.RegisterBloc(get<_i7.IAuthRepository>()));
  gh.factory<_i11.SignInBloc>(
      () => _i11.SignInBloc(get<_i7.IAuthRepository>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i7.IAuthRepository>()));
  gh.factory<_i13.ILocationRepository>(
      () => _i14.LocationRepository(get<_i9.LocationFromGeoCoding>()));
  gh.factory<_i15.MapControllerBloc>(() => _i15.MapControllerBloc(
      get<_i6.GetLocationBloc>(), get<_i13.ILocationRepository>()));
  gh.factory<_i16.SearchDestinationBloc>(() => _i16.SearchDestinationBloc(
      get<_i13.ILocationRepository>(), get<_i15.MapControllerBloc>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
