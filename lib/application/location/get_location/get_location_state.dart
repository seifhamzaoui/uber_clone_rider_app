part of 'get_location_bloc.dart';

@freezed
class GetLocationState with _$GetLocationState {
  const factory GetLocationState.initial() = _Initial;
  const factory GetLocationState.loading() = _Loading;
  const factory GetLocationState.locationServiceDisabled() = _LocationServiceDisabled;
  const factory GetLocationState.locationPermissionDenied() = _LocationPermissionDenied;
  const factory GetLocationState.positionlocated(Position postion) = _Positionlocated;
}
