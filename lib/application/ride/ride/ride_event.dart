part of 'ride_bloc.dart';

@freezed
class RideEvent with _$RideEvent {
  const factory RideEvent.started() = _Started;
  const factory RideEvent.requested({
    required Adress origin,
    required PlaceDetails destination,
    required double price,
  }) = _Requested;
  const factory RideEvent.requestCanceled(RideRequest ride) = _RequestCanceled;
}
