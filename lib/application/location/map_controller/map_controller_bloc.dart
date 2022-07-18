// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/application/location/get_location/get_location_bloc.dart';
import 'package:uber_clone/application/location/search_destination/search_destination_bloc.dart';
import 'package:uber_clone/domain/location/I_location_reository.dart';
import 'package:uber_clone/domain/location/entities.dart';
import 'package:uber_clone/domain/location/location_failure.dart';
import 'package:uber_clone/domain/location/value_objects.dart';

part 'map_controller_bloc.freezed.dart';
part 'map_controller_event.dart';
part 'map_controller_state.dart';

@Injectable()
class MapControllerBloc extends Bloc<MapControllerEvent, MapControllerState> {
  GetLocationBloc _getLocationBloc;
  ILocationRepository _locationRepository;
  MapControllerBloc(
    this._getLocationBloc,
    this._locationRepository,
  ) : super(MapControllerState.initial()) {
    on<MapControllerEvent>((event, emit) async {
      await event.map(
        mapCreated: (e) async {
          emit(state.copyWith(mapController: e.mapcontroller));
        },
        currentPositioninit: (e) async {
          LatLng position = LatLng(e.position.latitude, e.position.longitude);
          emit(state.copyWith(currentposition: position));
          await state.mapController?.animateCamera(
            CameraUpdate.newCameraPosition(
                CameraPosition(target: state.currentposition!, zoom: 13)),
          );
          Either<LocationFailure, LocationAdress> succesOrFailure =
              await _locationRepository.getCurrentAdress(position);
          succesOrFailure.fold(
            (failure) {
              emit(state.copyWith(responseOption: Some(failure)));
            },
            (adress) {
              emit(state.copyWith(currentAdress: adress, responseOption: none()));
            },
          );
        },
        directionFetched: (e) async {
          Either<LocationFailure, DirectionDetails> failureOrsuccess =
              await _locationRepository.getDirectionDetails(
            destination: e.destination,
            origin: e.origin,
          );

          failureOrsuccess.fold((l) => null, (directionDetails) async {
            Polyline polyLine = Polyline(
              polylineId: PolylineId('poly'),
              points: directionDetails.polyLinePoints,
              color: Colors.red,
              width: 5,
              endCap: Cap.roundCap,
              startCap: Cap.roundCap,
              jointType: JointType.bevel,
              visible: true,
            );
            emit(state.copyWith(
              polyline: some(polyLine),
            ));
          });
        },
      );
    });
  }

  @override
  close() async {
    _getLocationBloc.close();
  }
}
