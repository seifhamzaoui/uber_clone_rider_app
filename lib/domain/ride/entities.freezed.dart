// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RideRequest {
  UniqueId get rideId => throw _privateConstructorUsedError;
  Adress get origin => throw _privateConstructorUsedError;
  PlaceDetails get destination => throw _privateConstructorUsedError;
  UserEntity get rider => throw _privateConstructorUsedError;
  DriverId get driverId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RideRequestCopyWith<RideRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideRequestCopyWith<$Res> {
  factory $RideRequestCopyWith(
          RideRequest value, $Res Function(RideRequest) then) =
      _$RideRequestCopyWithImpl<$Res>;
  $Res call(
      {UniqueId rideId,
      Adress origin,
      PlaceDetails destination,
      UserEntity rider,
      DriverId driverId,
      double price});

  $AdressCopyWith<$Res> get origin;
  $PlaceDetailsCopyWith<$Res> get destination;
  $UserEntityCopyWith<$Res> get rider;
}

/// @nodoc
class _$RideRequestCopyWithImpl<$Res> implements $RideRequestCopyWith<$Res> {
  _$RideRequestCopyWithImpl(this._value, this._then);

  final RideRequest _value;
  // ignore: unused_field
  final $Res Function(RideRequest) _then;

  @override
  $Res call({
    Object? rideId = freezed,
    Object? origin = freezed,
    Object? destination = freezed,
    Object? rider = freezed,
    Object? driverId = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      rideId: rideId == freezed
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Adress,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as PlaceDetails,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as DriverId,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $AdressCopyWith<$Res> get origin {
    return $AdressCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value));
    });
  }

  @override
  $PlaceDetailsCopyWith<$Res> get destination {
    return $PlaceDetailsCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }

  @override
  $UserEntityCopyWith<$Res> get rider {
    return $UserEntityCopyWith<$Res>(_value.rider, (value) {
      return _then(_value.copyWith(rider: value));
    });
  }
}

/// @nodoc
abstract class _$$_RideRequestCopyWith<$Res>
    implements $RideRequestCopyWith<$Res> {
  factory _$$_RideRequestCopyWith(
          _$_RideRequest value, $Res Function(_$_RideRequest) then) =
      __$$_RideRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId rideId,
      Adress origin,
      PlaceDetails destination,
      UserEntity rider,
      DriverId driverId,
      double price});

  @override
  $AdressCopyWith<$Res> get origin;
  @override
  $PlaceDetailsCopyWith<$Res> get destination;
  @override
  $UserEntityCopyWith<$Res> get rider;
}

/// @nodoc
class __$$_RideRequestCopyWithImpl<$Res> extends _$RideRequestCopyWithImpl<$Res>
    implements _$$_RideRequestCopyWith<$Res> {
  __$$_RideRequestCopyWithImpl(
      _$_RideRequest _value, $Res Function(_$_RideRequest) _then)
      : super(_value, (v) => _then(v as _$_RideRequest));

  @override
  _$_RideRequest get _value => super._value as _$_RideRequest;

  @override
  $Res call({
    Object? rideId = freezed,
    Object? origin = freezed,
    Object? destination = freezed,
    Object? rider = freezed,
    Object? driverId = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_RideRequest(
      rideId: rideId == freezed
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Adress,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as PlaceDetails,
      rider: rider == freezed
          ? _value.rider
          : rider // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as DriverId,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_RideRequest implements _RideRequest {
  const _$_RideRequest(
      {required this.rideId,
      required this.origin,
      required this.destination,
      required this.rider,
      required this.driverId,
      required this.price});

  @override
  final UniqueId rideId;
  @override
  final Adress origin;
  @override
  final PlaceDetails destination;
  @override
  final UserEntity rider;
  @override
  final DriverId driverId;
  @override
  final double price;

  @override
  String toString() {
    return 'RideRequest(rideId: $rideId, origin: $origin, destination: $destination, rider: $rider, driverId: $driverId, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RideRequest &&
            const DeepCollectionEquality().equals(other.rideId, rideId) &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.rider, rider) &&
            const DeepCollectionEquality().equals(other.driverId, driverId) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rideId),
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(rider),
      const DeepCollectionEquality().hash(driverId),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_RideRequestCopyWith<_$_RideRequest> get copyWith =>
      __$$_RideRequestCopyWithImpl<_$_RideRequest>(this, _$identity);
}

abstract class _RideRequest implements RideRequest {
  const factory _RideRequest(
      {required final UniqueId rideId,
      required final Adress origin,
      required final PlaceDetails destination,
      required final UserEntity rider,
      required final DriverId driverId,
      required final double price}) = _$_RideRequest;

  @override
  UniqueId get rideId => throw _privateConstructorUsedError;
  @override
  Adress get origin => throw _privateConstructorUsedError;
  @override
  PlaceDetails get destination => throw _privateConstructorUsedError;
  @override
  UserEntity get rider => throw _privateConstructorUsedError;
  @override
  DriverId get driverId => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RideRequestCopyWith<_$_RideRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
