import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/domain/location/entities.dart';
part 'adress_dto.freezed.dart';
part 'adress_dto.g.dart';

@freezed
abstract class AdressDto with _$AdressDto {
  const factory AdressDto({required String formatted_address}) = _AdressDto;
  factory AdressDto.fromJson(Map<String, dynamic> json) => _$AdressDtoFromJson(json);
}

_predictedNamesFromjson(Map<dynamic, dynamic> json, String name) =>
    json['structured_formatting'][name];

@freezed
abstract class PredictionAdressDto implements _$PredictionAdressDto {
  PredictionAdressDto._();
  factory PredictionAdressDto({
    required String place_id,
    @JsonKey(readValue: _predictedNamesFromjson)
        required String main_text,
    @JsonKey(
      readValue: _predictedNamesFromjson,
    )
        required String secondary_text,
  }) = _PredictionAdressDto;

  factory PredictionAdressDto.fromJson(Map<String, dynamic> json) =>
      _$PredictionAdressDtoFromJson(json);

  PredictedAdress toDomain() {
    return PredictedAdress(
      placeId: place_id,
      mainText: main_text,
      secondText: secondary_text,
    );
  }
}

_latlngFromjson(Map<dynamic, dynamic> json, String name) => json['geometry']['location'][name];

@freezed
abstract class PlaceDetailsDto implements _$PlaceDetailsDto {
  const PlaceDetailsDto._();
  const factory PlaceDetailsDto({
    required String place_id,
    required String formatted_address,
    @JsonKey(
      readValue: _latlngFromjson,
    )
        required double lat,
    @JsonKey(
      readValue: _latlngFromjson,
    )
        required double lng,
  }) = _PlaceDetailsDto;
  factory PlaceDetailsDto.fromJson(Map<String, dynamic> json) => _$PlaceDetailsDtoFromJson(json);

  PlaceDetails toDomain() {
    return PlaceDetails(
      placeId: place_id,
      formatedAdress: formatted_address,
      cordinate: LatLng(lat, lng),
    );
  }
}

distanceTextfromJson(Map<dynamic, dynamic> json, String name) =>
    json['legs'][0]['distance']['text'];

durationTextfromJson(Map<dynamic, dynamic> json, String name) =>
    json['legs'][0]['duration']['text'];
distanceValuefromJson(Map<dynamic, dynamic> json, String name) =>
    json['legs'][0]['distance']["value"];

durationValuefromJson(Map<dynamic, dynamic> json, String name) =>
    json['legs'][0]['duration']["value"];
polyLinefromjson(Map<dynamic, dynamic> json, String name) => json['overview_polyline'][name];

@freezed
abstract class DirectionDetailsDto implements _$DirectionDetailsDto {
  const DirectionDetailsDto._();
  const factory DirectionDetailsDto({
    @JsonKey(readValue: distanceValuefromJson) required double distanceValue,
    @JsonKey(readValue: distanceTextfromJson) required String distanceText,
    @JsonKey(readValue: durationValuefromJson) required double durationValue,
    @JsonKey(readValue: durationTextfromJson) required String durationText,
    @JsonKey(name: 'points', readValue: polyLinefromjson) required String polyLinePoints,
  }) = _DirectionDetailsDto;

  factory DirectionDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$DirectionDetailsDtoFromJson(json);
  DirectionDetails toDomain() {
    PolylinePoints polylinePoints = PolylinePoints();
    List<PointLatLng> result = polylinePoints.decodePolyline(polyLinePoints);
    List<LatLng> domainpolyLines = result.map((e) => LatLng(e.latitude, e.longitude)).toList();
    return DirectionDetails(
      distanceValue: distanceValue,
      distanceText: distanceText,
      durationValue: durationValue,
      durationText: durationText,
      polyLinePoints: domainpolyLines,
    );
  }
}
