part of 'map_controller_bloc.dart';

@freezed
class MapControllerEvent with _$MapControllerEvent {
  const factory MapControllerEvent.mapCreated({
    required GoogleMapController mapcontroller,
  }) = _MapCreated;
  const factory MapControllerEvent.currentPositioninit(Position position) = _CurrentPostioninit;
}
