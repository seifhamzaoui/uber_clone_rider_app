// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_database/firebase_database.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc/auth_bloc.dart' as _i14;
import 'application/auth/register/register_bloc.dart' as _i12;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i13;
import 'application/location/get_location/get_location_bloc.dart' as _i6;
import 'application/location/map_controller/map_controller_bloc.dart' as _i17;
import 'application/location/search_destination/search_destination_bloc.dart'
    as _i19;
import 'application/ride/ride/ride_bloc.dart' as _i18;
import 'domain/auth/I_auth_repository.dart' as _i7;
import 'domain/location/I_location_reository.dart' as _i15;
import 'domain/ride/I_ride_repository.dart' as _i9;
import 'infrastructure/auth/auth_repository.dart' as _i8;
import 'infrastructure/core/injectable_module.dart' as _i20;
import 'infrastructure/location/location_data_source.dart' as _i11;
import 'infrastructure/location/location_repository.dart' as _i16;
import 'infrastructure/ride/rider_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.factory<_i4.FirebaseAuth>(() => registerModule.auth);
  gh.factory<_i5.FirebaseDatabase>(() => registerModule.database);
  gh.singleton<_i6.GetLocationBloc>(_i6.GetLocationBloc());
  gh.lazySingleton<_i7.IAuthRepository>(() =>
      _i8.AuthRepository(get<_i4.FirebaseAuth>(), get<_i5.FirebaseDatabase>()));
  gh.factory<_i9.IRideRepository>(() => _i10.RideRepository(
      get<_i7.IAuthRepository>(), get<_i5.FirebaseDatabase>()));
  gh.factory<_i11.LocationFromGeoCoding>(
      () => _i11.LocationFromGeoCoding(get<_i3.Dio>()));
  gh.singleton<_i12.RegisterBloc>(
      _i12.RegisterBloc(get<_i7.IAuthRepository>()));
  gh.singleton<_i13.SignInBloc>(_i13.SignInBloc(get<_i7.IAuthRepository>()));
  gh.singleton<_i14.AuthBloc>(_i14.AuthBloc(get<_i7.IAuthRepository>()));
  gh.factory<_i15.ILocationRepository>(
      () => _i16.LocationRepository(get<_i11.LocationFromGeoCoding>()));
  gh.singleton<_i17.MapControllerBloc>(_i17.MapControllerBloc(
      get<_i6.GetLocationBloc>(), get<_i15.ILocationRepository>()));
  gh.singleton<_i18.RideBloc>(
      _i18.RideBloc(get<_i9.IRideRepository>(), get<_i14.AuthBloc>()));
  gh.singleton<_i19.SearchDestinationBloc>(_i19.SearchDestinationBloc(
      get<_i15.ILocationRepository>(), get<_i17.MapControllerBloc>()));
  return get;
}

class _$RegisterModule extends _i20.RegisterModule {}
