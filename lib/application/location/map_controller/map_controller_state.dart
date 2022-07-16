part of 'map_controller_bloc.dart';

@freezed
class MapControllerState with _$MapControllerState {
  // const factory MapControllerState.initial() = _Initial;
  const factory MapControllerState({
    GoogleMapController? mapController,
    LatLng? currentposition,
  }) = _MapControllerState;
  factory MapControllerState.initial() =>
      MapControllerState(mapController: null, currentposition: null);
}
