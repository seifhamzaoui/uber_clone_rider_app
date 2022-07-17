import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/domain/location/entities.dart';
import 'package:uber_clone/domain/location/location_failure.dart';
import 'package:uber_clone/domain/location/value_objects.dart';

abstract class ILocationRepository {
  Future<Either<LocationFailure, LocationAdress>> getCurrentAdress(
    LatLng position,
  );
  Future<Either<LocationFailure, List<PredictedAdress>>> searchDestinationAdress(
    String inputAdress,
  );
}
