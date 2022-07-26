import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/location/entities.dart';
import 'package:uber_clone/domain/ride/entities.dart';
import 'package:uber_clone/domain/ride/value_objects.dart';
import 'package:uber_clone/infrastructure/auth/register.dto.dart';
import 'package:uber_clone/infrastructure/location/adress_dto.dart';
part 'dtos.freezed.dart';
part 'dtos.g.dart';

adressDtoToJson(AdressDto origin) => origin.toJson();
placeDetailsToJson(PlaceDetailsDto dest) => dest.toJson();
RegisterDtoToJson(RegisterDto reg) => {...reg.toJson(), 'id': reg.userId};
adressFromJson(Map<String, dynamic> json) => AdressDto(
      formatted_address: json['formatted_address'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      placeId: json['placeId'],
    );
placedtailsFRomJson(Map<String, dynamic> json) => PlaceDetailsDto(
    place_id: json['place_id'],
    formatted_address: json['formatted_address'],
    lat: json['lat'],
    lng: json['lng']);

@freezed
abstract class RideRequesDto implements _$RideRequesDto {
  const RideRequesDto._();

  const factory RideRequesDto({
    @JsonKey(ignore: true) @Default('') String rideId,
    @JsonKey(toJson: adressDtoToJson, fromJson: adressFromJson) required AdressDto origin,
    @JsonKey(toJson: placeDetailsToJson, fromJson: placedtailsFRomJson)
        required PlaceDetailsDto destination,
    required String driverid,
    @JsonKey(toJson: RegisterDtoToJson) required RegisterDto rider,
    required double price,
  }) = _RideRequesDto;

  factory RideRequesDto.fromJson(Map<String, dynamic> json) => _$RideRequesDtoFromJson(json);

  RideRequest toDomain() {
    return RideRequest(
      rideId: UniqueId.fromUniqueId(rideId),
      origin: origin.toDomain(),
      destination: destination.toDomain(),
      rider: rider.toUserEntity(),
      driverId: DriverId(driverid),
      price: price,
    );
  }

  factory RideRequesDto.fromDomain(RideRequest domainRideRequest) {
    return RideRequesDto(
      origin: AdressDto.fromDomain(domainRideRequest.origin),
      destination: PlaceDetailsDto.fromDomain(domainRideRequest.destination),
      driverid: domainRideRequest.driverId.value.fold((l) => '', (r) => r),
      rider: RegisterDto.fromUserEntity(domainRideRequest.rider),
      price: domainRideRequest.price,
      rideId: domainRideRequest.rideId.getOrCrash(),
    );
  }
}
