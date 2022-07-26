// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RideRequesDto _$$_RideRequesDtoFromJson(Map<String, dynamic> json) =>
    _$_RideRequesDto(
      origin: adressFromJson(json['origin'] as Map<String, dynamic>),
      destination:
          placedtailsFRomJson(json['destination'] as Map<String, dynamic>),
      driverid: json['driverid'] as String,
      rider: RegisterDto.fromJson(json['rider'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RideRequesDtoToJson(_$_RideRequesDto instance) =>
    <String, dynamic>{
      'origin': adressDtoToJson(instance.origin),
      'destination': placeDetailsToJson(instance.destination),
      'driverid': instance.driverid,
      'rider': RegisterDtoToJson(instance.rider),
      'price': instance.price,
    };
