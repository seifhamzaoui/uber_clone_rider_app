// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adress_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdressDto _$$_AdressDtoFromJson(Map<String, dynamic> json) => _$_AdressDto(
      formatted_address: json['formatted_address'] as String,
    );

Map<String, dynamic> _$$_AdressDtoToJson(_$_AdressDto instance) => <String, dynamic>{
      'formatted_address': instance.formatted_address,
    };

_$_PredictionAdressDto _$$_PredictionAdressDtoFromJson(Map<String, dynamic> json) =>
    _$_PredictionAdressDto(
      place_id: json['place_id'] as String,
      main_text: _mainTextFromjson(json['structured_formatting'] as Map),
      secondary_text: _secondTextFromjson(json['structured_formatting'] as Map),
    );

Map<String, dynamic> _$$_PredictionAdressDtoToJson(_$_PredictionAdressDto instance) =>
    <String, dynamic>{
      'place_id': instance.place_id,
      'structured_formatting': instance.main_text,
      '': instance.secondary_text,
    };
