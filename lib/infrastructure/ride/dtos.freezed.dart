// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RideRequesDto _$RideRequesDtoFromJson(Map<String, dynamic> json) {
  return _RideRequesDto.fromJson(json);
}

/// @nodoc
mixin _$RideRequesDto {
  @JsonKey(ignore: true)
  String get rideId => throw _privateConstructorUsedError;
  @JsonKey(toJson: adressDtoToJson, fromJson: adressFromJson)
  AdressDto get origin => throw _privateConstructorUsedError;
  @JsonKey(toJson: placeDetailsToJson, fromJson: placedtailsFRomJson)
  PlaceDetailsDto get destination => throw _privateConstructorUsedError;
  String get driverid => throw _privateConstructorUsedError;
  @JsonKey(toJson: RegisterDtoToJson)
  RegisterDto get rider => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideRequesDtoCopyWith<RideRequesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideRequesDtoCopyWith<$Res> {
  factory $RideRequesDtoCopyWith(
          RideRequesDto value, $Res Function(RideRequesDto) then) =
      _$RideRequesDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          String rideId,
      @JsonKey(toJson: adressDtoToJson, fromJson: adressFromJson)
          AdressDto origin,
      @JsonKey(toJson: placeDetailsToJson, fromJson: placedtailsFRomJson)
          PlaceDetailsDto destination,
      String driverid,
      @JsonKey(toJson: RegisterDtoToJson)
          RegisterDto rider,
      double price});

  $AdressDtoCopyWith<$Res> get origin;
  $PlaceDetailsDtoCopyWith<$Res> get destination;
  $RegisterDtoCopyWith<$Res> get rider;
}

/// @nodoc
class _$RideRequesDtoCopyWithImpl<$Res>
    implements $RideRequesDtoCopyWith<$Res> {
  _$RideRequesDtoCopyWithImpl(this._value, this._then);

  final RideRequesDto _value;
  // ignore: unused_field
  final $Res Function(RideRequesDto) _then;

  @override
  $Res call({
    Object? rideId = freezed,
    Object? origin = freezed,
    Object? destination = freezed,
    Object? driverid = freezed,
    Object? rider = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      rideId: rideId == freezed
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as AdressDto,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as PlaceDetailsDto,
      driverid: driverid == freezed
          ? _value.driverid
          : driverid // ignore: cast_nullable_to_non_nullable
              as String,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as RegisterDto,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $AdressDtoCopyWith<$Res> get origin {
    return $AdressDtoCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value));
    });
  }

  @override
  $PlaceDetailsDtoCopyWith<$Res> get destination {
    return $PlaceDetailsDtoCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }

  @override
  $RegisterDtoCopyWith<$Res> get rider {
    return $RegisterDtoCopyWith<$Res>(_value.rider, (value) {
      return _then(_value.copyWith(rider: value));
    });
  }
}

/// @nodoc
abstract class _$$_RideRequesDtoCopyWith<$Res>
    implements $RideRequesDtoCopyWith<$Res> {
  factory _$$_RideRequesDtoCopyWith(
          _$_RideRequesDto value, $Res Function(_$_RideRequesDto) then) =
      __$$_RideRequesDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true)
          String rideId,
      @JsonKey(toJson: adressDtoToJson, fromJson: adressFromJson)
          AdressDto origin,
      @JsonKey(toJson: placeDetailsToJson, fromJson: placedtailsFRomJson)
          PlaceDetailsDto destination,
      String driverid,
      @JsonKey(toJson: RegisterDtoToJson)
          RegisterDto rider,
      double price});

  @override
  $AdressDtoCopyWith<$Res> get origin;
  @override
  $PlaceDetailsDtoCopyWith<$Res> get destination;
  @override
  $RegisterDtoCopyWith<$Res> get rider;
}

/// @nodoc
class __$$_RideRequesDtoCopyWithImpl<$Res>
    extends _$RideRequesDtoCopyWithImpl<$Res>
    implements _$$_RideRequesDtoCopyWith<$Res> {
  __$$_RideRequesDtoCopyWithImpl(
      _$_RideRequesDto _value, $Res Function(_$_RideRequesDto) _then)
      : super(_value, (v) => _then(v as _$_RideRequesDto));

  @override
  _$_RideRequesDto get _value => super._value as _$_RideRequesDto;

  @override
  $Res call({
    Object? rideId = freezed,
    Object? origin = freezed,
    Object? destination = freezed,
    Object? driverid = freezed,
    Object? rider = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_RideRequesDto(
      rideId: rideId == freezed
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as AdressDto,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as PlaceDetailsDto,
      driverid: driverid == freezed
          ? _value.driverid
          : driverid // ignore: cast_nullable_to_non_nullable
              as String,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as RegisterDto,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RideRequesDto extends _RideRequesDto {
  const _$_RideRequesDto(
      {@JsonKey(ignore: true)
          this.rideId = '',
      @JsonKey(toJson: adressDtoToJson, fromJson: adressFromJson)
          required this.origin,
      @JsonKey(toJson: placeDetailsToJson, fromJson: placedtailsFRomJson)
          required this.destination,
      required this.driverid,
      @JsonKey(toJson: RegisterDtoToJson)
          required this.rider,
      required this.price})
      : super._();

  factory _$_RideRequesDto.fromJson(Map<String, dynamic> json) =>
      _$$_RideRequesDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String rideId;
  @override
  @JsonKey(toJson: adressDtoToJson, fromJson: adressFromJson)
  final AdressDto origin;
  @override
  @JsonKey(toJson: placeDetailsToJson, fromJson: placedtailsFRomJson)
  final PlaceDetailsDto destination;
  @override
  final String driverid;
  @override
  @JsonKey(toJson: RegisterDtoToJson)
  final RegisterDto rider;
  @override
  final double price;

  @override
  String toString() {
    return 'RideRequesDto(rideId: $rideId, origin: $origin, destination: $destination, driverid: $driverid, rider: $rider, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RideRequesDto &&
            const DeepCollectionEquality().equals(other.rideId, rideId) &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.driverid, driverid) &&
            const DeepCollectionEquality().equals(other.rider, rider) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rideId),
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(driverid),
      const DeepCollectionEquality().hash(rider),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_RideRequesDtoCopyWith<_$_RideRequesDto> get copyWith =>
      __$$_RideRequesDtoCopyWithImpl<_$_RideRequesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RideRequesDtoToJson(this);
  }
}

abstract class _RideRequesDto extends RideRequesDto {
  const factory _RideRequesDto(
      {@JsonKey(ignore: true)
          final String rideId,
      @JsonKey(toJson: adressDtoToJson, fromJson: adressFromJson)
          required final AdressDto origin,
      @JsonKey(toJson: placeDetailsToJson, fromJson: placedtailsFRomJson)
          required final PlaceDetailsDto destination,
      required final String driverid,
      @JsonKey(toJson: RegisterDtoToJson)
          required final RegisterDto rider,
      required final double price}) = _$_RideRequesDto;
  const _RideRequesDto._() : super._();

  factory _RideRequesDto.fromJson(Map<String, dynamic> json) =
      _$_RideRequesDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get rideId => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: adressDtoToJson, fromJson: adressFromJson)
  AdressDto get origin => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: placeDetailsToJson, fromJson: placedtailsFRomJson)
  PlaceDetailsDto get destination => throw _privateConstructorUsedError;
  @override
  String get driverid => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: RegisterDtoToJson)
  RegisterDto get rider => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RideRequesDtoCopyWith<_$_RideRequesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
