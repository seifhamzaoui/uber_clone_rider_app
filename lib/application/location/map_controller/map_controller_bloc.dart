// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/application/location/get_location/get_location_bloc.dart';

part 'map_controller_bloc.freezed.dart';
part 'map_controller_event.dart';
part 'map_controller_state.dart';

@Injectable()
class MapControllerBloc extends Bloc<MapControllerEvent, MapControllerState> {
  GetLocationBloc _getLocationBloc;
  MapControllerBloc(
    this._getLocationBloc,
  ) : super(MapControllerState.initial()) {
    on<MapControllerEvent>((event, emit) async {
      await event.map(
        mapCreated: (e) async {
          emit(state.copyWith(mapController: e.mapcontroller));
        },
        currentPositioninit: (e) {
          LatLng position = LatLng(e.position.latitude, e.position.longitude);
          emit(state.copyWith(currentposition: position));
          state.mapController?.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(target: state.currentposition!, zoom: 14)));
        },
      );
    });
  }

  @override
  close() async {
    _getLocationBloc.close();
  }
}
