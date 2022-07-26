// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adress_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdressDto _$$_AdressDtoFromJson(Map<String, dynamic> json) => _$_AdressDto(
      formatted_address: json['formatted_address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      placeId: json['placeId'] as String,
    );

Map<String, dynamic> _$$_AdressDtoToJson(_$_AdressDto instance) =>
    <String, dynamic>{
      'formatted_address': instance.formatted_address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'placeId': instance.placeId,
    };

_$_PredictionAdressDto _$$_PredictionAdressDtoFromJson(
        Map<String, dynamic> json) =>
    _$_PredictionAdressDto(
      place_id: json['place_id'] as String,
      main_text: _predictedNamesFromjson(json, 'main_text') as String,
      secondary_text: _predictedNamesFromjson(json, 'secondary_text') as String,
    );

Map<String, dynamic> _$$_PredictionAdressDtoToJson(
        _$_PredictionAdressDto instance) =>
    <String, dynamic>{
      'place_id': instance.place_id,
      'main_text': instance.main_text,
      'secondary_text': instance.secondary_text,
    };

_$_PlaceDetailsDto _$$_PlaceDetailsDtoFromJson(Map<String, dynamic> json) =>
    _$_PlaceDetailsDto(
      place_id: json['place_id'] as String,
      formatted_address: json['formatted_address'] as String,
      lat: (_latlngFromjson(json, 'lat') as num).toDouble(),
      lng: (_latlngFromjson(json, 'lng') as num).toDouble(),
    );

Map<String, dynamic> _$$_PlaceDetailsDtoToJson(_$_PlaceDetailsDto instance) =>
    <String, dynamic>{
      'place_id': instance.place_id,
      'formatted_address': instance.formatted_address,
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$_DirectionDetailsDto _$$_DirectionDetailsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_DirectionDetailsDto(
      distanceValue:
          (distanceValuefromJson(json, 'distanceValue') as num).toDouble(),
      distanceText: distanceTextfromJson(json, 'distanceText') as String,
      durationValue:
          (durationValuefromJson(json, 'durationValue') as num).toDouble(),
      durationText: durationTextfromJson(json, 'durationText') as String,
      polyLinePoints: polyLinefromjson(json, 'points') as String,
    );

Map<String, dynamic> _$$_DirectionDetailsDtoToJson(
        _$_DirectionDetailsDto instance) =>
    <String, dynamic>{
      'distanceValue': instance.distanceValue,
      'distanceText': instance.distanceText,
      'durationValue': instance.durationValue,
      'durationText': instance.durationText,
      'points': instance.polyLinePoints,
    };
