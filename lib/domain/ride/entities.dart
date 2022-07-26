import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uber_clone/domain/auth/user_entity.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/location/entities.dart';
import 'package:uber_clone/domain/ride/value_objects.dart';
part 'entities.freezed.dart';

@freezed
abstract class RideRequest with _$RideRequest {
  const factory RideRequest({
    required UniqueId rideId,
    required Adress origin,
    required PlaceDetails destination,
    required UserEntity rider,
    required DriverId driverId,
    required double price,
  }) = _RideRequest;
}
