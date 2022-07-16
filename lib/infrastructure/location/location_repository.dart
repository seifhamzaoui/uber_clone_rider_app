// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/domain/location/I_location_reository.dart';
import 'package:uber_clone/domain/location/location_failure.dart';
import 'package:uber_clone/domain/location/value_objects.dart';
import 'package:uber_clone/infrastructure/location/adress_dto.dart';
import 'package:uber_clone/infrastructure/location/location_data_source.dart';

@Injectable(as: ILocationRepository)
class LocationRepository implements ILocationRepository {
  LocationFromGeoCoding _locationFromGeoCoding;
  LocationRepository(
    this._locationFromGeoCoding,
  );
  @override
  Future<Either<LocationFailure, LocationAdress>> getCurrentAdress(
    LatLng position,
  ) async {
    try {
      AdressDto currentAdressDto = await _locationFromGeoCoding.getCurrentAdress(position);
      LocationAdress adress = LocationAdress(currentAdressDto.formatted_address);
      return right(adress);
    } on PlatformException catch (e) {
      return left(LocationFailure.notFound());
    } catch (e) {
      return left(LocationFailure.serverError());
    }
  }
}
