// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/domain/location/I_location_reository.dart';
import 'package:uber_clone/domain/location/entities.dart';
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
  Future<Either<LocationFailure, LocationAdress>> getCurrentAdress(LatLng position) async {
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

  @override
  Future<Either<LocationFailure, List<PredictedAdress>>> searchDestinationAdress(
      String inputAdress) async {
    try {
      List<PredictionAdressDto> list =
          await _locationFromGeoCoding.getpredictedAdresses(inputAdress);
      List<PredictedAdress> domainList = list.map((e) => e.toDomain()).toList();
      return right(domainList);
    } on PlatformException catch (e) {
      return left(LocationFailure.notFound());
    } catch (e) {
      return left(LocationFailure.serverError());
    }
  }

  @override
  Future<Either<LocationFailure, PlaceDetails>> getPlaceDetails(String placeId) async {
    try {
      PlaceDetailsDto placeDetailsDto = await _locationFromGeoCoding.getplaceDetails(placeId);
      PlaceDetails placeDetails = placeDetailsDto.toDomain();
      return right(placeDetails);
    } on PlatformException catch (e) {
      return left(LocationFailure.notFound());
    } catch (e) {
      return left(LocationFailure.serverError());
    }
  }

  @override
  Future<Either<LocationFailure, DirectionDetails>> getDirectionDetails({
    required PlaceDetails destination,
    required Adress origin,
  }) async {
    try {
      DirectionDetailsDto directionDetailsDto = await _locationFromGeoCoding.getDirectionDetails(
        destination: destination,
        origin: origin,
      );
      DirectionDetails directionDetails = directionDetailsDto.toDomain();
      directionDetails = directionDetails.copyWith(destination: destination, origin: origin);
      return right(directionDetails);
    } on PlatformException catch (e) {
      return left(LocationFailure.notFound());
    } catch (e) {
      return left(LocationFailure.serverError());
    }
  }
}
