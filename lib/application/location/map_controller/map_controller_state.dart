// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'map_controller_bloc.dart';

class MapControllerState {
  // const factory MapControllerState.initial() = _Initial;
  GoogleMapController? mapController;
  LatLng? currentposition;
  LocationAdress currentAdress;
  Option<LocationFailure> responseOption;
  MapControllerState({
    this.mapController,
    this.currentposition,
    required this.currentAdress,
    required this.responseOption,
  });

  factory MapControllerState.initial() => MapControllerState(
        mapController: null,
        currentposition: null,
        currentAdress: LocationAdress(''),
        responseOption: none(),
      );

  @override
  bool operator ==(covariant MapControllerState other) {
    if (identical(this, other)) return true;

    return other.mapController == mapController &&
        other.currentposition == currentposition &&
        other.currentAdress == currentAdress &&
        other.responseOption == responseOption;
  }

  @override
  int get hashCode {
    return mapController.hashCode ^
        currentposition.hashCode ^
        currentAdress.hashCode ^
        responseOption.hashCode;
  }

  MapControllerState copyWith({
    GoogleMapController? mapController,
    LatLng? currentposition,
    LocationAdress? currentAdress,
    Option<LocationFailure>? responseOption,
  }) {
    return MapControllerState(
      mapController: mapController ?? this.mapController,
      currentposition: currentposition ?? this.currentposition,
      currentAdress: currentAdress ?? this.currentAdress,
      responseOption: responseOption ?? this.responseOption,
    );
  }
}
