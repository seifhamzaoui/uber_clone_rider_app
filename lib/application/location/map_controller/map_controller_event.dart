part of 'map_controller_bloc.dart';

@freezed
class MapControllerEvent with _$MapControllerEvent {
  const factory MapControllerEvent.mapCreated({
    required GoogleMapController mapcontroller,
  }) = _MapCreated;
  const factory MapControllerEvent.currentPositioninit(Position position) = _CurrentPostioninit;
  const factory MapControllerEvent.directionFetched(
      {required PlaceDetails destination, required Adress origin}) = _directionFetched;
  const factory MapControllerEvent.reseted() = _Reseted;
}
