part of 'ride_bloc.dart';

@freezed
class RideState with _$RideState {
  const factory RideState.initial() = _Initial;
  const factory RideState.noRideExist() = _NoRideExist;
  const factory RideState.rideWaiting(RideRequest ride) = _RideWaiting;
  const factory RideState.error() = _Error;
  const factory RideState.isLoading() = _IsLoading;
}
