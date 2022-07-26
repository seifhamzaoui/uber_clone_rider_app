// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ride_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RideEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Adress origin, PlaceDetails destination, double price)
        requested,
    required TResult Function(RideRequest ride) requestCanceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Adress origin, PlaceDetails destination, double price)?
        requested,
    TResult Function(RideRequest ride)? requestCanceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Adress origin, PlaceDetails destination, double price)?
        requested,
    TResult Function(RideRequest ride)? requestCanceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Requested value) requested,
    required TResult Function(_RequestCanceled value) requestCanceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Requested value)? requested,
    TResult Function(_RequestCanceled value)? requestCanceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Requested value)? requested,
    TResult Function(_RequestCanceled value)? requestCanceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideEventCopyWith<$Res> {
  factory $RideEventCopyWith(RideEvent value, $Res Function(RideEvent) then) =
      _$RideEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideEventCopyWithImpl<$Res> implements $RideEventCopyWith<$Res> {
  _$RideEventCopyWithImpl(this._value, this._then);

  final RideEvent _value;
  // ignore: unused_field
  final $Res Function(RideEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$RideEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RideEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Adress origin, PlaceDetails destination, double price)
        requested,
    required TResult Function(RideRequest ride) requestCanceled,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Adress origin, PlaceDetails destination, double price)?
        requested,
    TResult Function(RideRequest ride)? requestCanceled,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Adress origin, PlaceDetails destination, double price)?
        requested,
    TResult Function(RideRequest ride)? requestCanceled,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Requested value) requested,
    required TResult Function(_RequestCanceled value) requestCanceled,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Requested value)? requested,
    TResult Function(_RequestCanceled value)? requestCanceled,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Requested value)? requested,
    TResult Function(_RequestCanceled value)? requestCanceled,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RideEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_RequestedCopyWith<$Res> {
  factory _$$_RequestedCopyWith(
          _$_Requested value, $Res Function(_$_Requested) then) =
      __$$_RequestedCopyWithImpl<$Res>;
  $Res call({Adress origin, PlaceDetails destination, double price});

  $AdressCopyWith<$Res> get origin;
  $PlaceDetailsCopyWith<$Res> get destination;
}

/// @nodoc
class __$$_RequestedCopyWithImpl<$Res> extends _$RideEventCopyWithImpl<$Res>
    implements _$$_RequestedCopyWith<$Res> {
  __$$_RequestedCopyWithImpl(
      _$_Requested _value, $Res Function(_$_Requested) _then)
      : super(_value, (v) => _then(v as _$_Requested));

  @override
  _$_Requested get _value => super._value as _$_Requested;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Requested(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Adress,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as PlaceDetails,
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
}

/// @nodoc

class _$_Requested with DiagnosticableTreeMixin implements _Requested {
  const _$_Requested(
      {required this.origin, required this.destination, required this.price});

  @override
  final Adress origin;
  @override
  final PlaceDetails destination;
  @override
  final double price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.requested(origin: $origin, destination: $destination, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RideEvent.requested'))
      ..add(DiagnosticsProperty('origin', origin))
      ..add(DiagnosticsProperty('destination', destination))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Requested &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_RequestedCopyWith<_$_Requested> get copyWith =>
      __$$_RequestedCopyWithImpl<_$_Requested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Adress origin, PlaceDetails destination, double price)
        requested,
    required TResult Function(RideRequest ride) requestCanceled,
  }) {
    return requested(origin, destination, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Adress origin, PlaceDetails destination, double price)?
        requested,
    TResult Function(RideRequest ride)? requestCanceled,
  }) {
    return requested?.call(origin, destination, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Adress origin, PlaceDetails destination, double price)?
        requested,
    TResult Function(RideRequest ride)? requestCanceled,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(origin, destination, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Requested value) requested,
    required TResult Function(_RequestCanceled value) requestCanceled,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Requested value)? requested,
    TResult Function(_RequestCanceled value)? requestCanceled,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Requested value)? requested,
    TResult Function(_RequestCanceled value)? requestCanceled,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class _Requested implements RideEvent {
  const factory _Requested(
      {required final Adress origin,
      required final PlaceDetails destination,
      required final double price}) = _$_Requested;

  Adress get origin => throw _privateConstructorUsedError;
  PlaceDetails get destination => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RequestedCopyWith<_$_Requested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestCanceledCopyWith<$Res> {
  factory _$$_RequestCanceledCopyWith(
          _$_RequestCanceled value, $Res Function(_$_RequestCanceled) then) =
      __$$_RequestCanceledCopyWithImpl<$Res>;
  $Res call({RideRequest ride});

  $RideRequestCopyWith<$Res> get ride;
}

/// @nodoc
class __$$_RequestCanceledCopyWithImpl<$Res>
    extends _$RideEventCopyWithImpl<$Res>
    implements _$$_RequestCanceledCopyWith<$Res> {
  __$$_RequestCanceledCopyWithImpl(
      _$_RequestCanceled _value, $Res Function(_$_RequestCanceled) _then)
      : super(_value, (v) => _then(v as _$_RequestCanceled));

  @override
  _$_RequestCanceled get _value => super._value as _$_RequestCanceled;

  @override
  $Res call({
    Object? ride = freezed,
  }) {
    return _then(_$_RequestCanceled(
      ride == freezed
          ? _value.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as RideRequest,
    ));
  }

  @override
  $RideRequestCopyWith<$Res> get ride {
    return $RideRequestCopyWith<$Res>(_value.ride, (value) {
      return _then(_value.copyWith(ride: value));
    });
  }
}

/// @nodoc

class _$_RequestCanceled
    with DiagnosticableTreeMixin
    implements _RequestCanceled {
  const _$_RequestCanceled(this.ride);

  @override
  final RideRequest ride;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.requestCanceled(ride: $ride)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RideEvent.requestCanceled'))
      ..add(DiagnosticsProperty('ride', ride));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestCanceled &&
            const DeepCollectionEquality().equals(other.ride, ride));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ride));

  @JsonKey(ignore: true)
  @override
  _$$_RequestCanceledCopyWith<_$_RequestCanceled> get copyWith =>
      __$$_RequestCanceledCopyWithImpl<_$_RequestCanceled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Adress origin, PlaceDetails destination, double price)
        requested,
    required TResult Function(RideRequest ride) requestCanceled,
  }) {
    return requestCanceled(ride);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Adress origin, PlaceDetails destination, double price)?
        requested,
    TResult Function(RideRequest ride)? requestCanceled,
  }) {
    return requestCanceled?.call(ride);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Adress origin, PlaceDetails destination, double price)?
        requested,
    TResult Function(RideRequest ride)? requestCanceled,
    required TResult orElse(),
  }) {
    if (requestCanceled != null) {
      return requestCanceled(ride);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Requested value) requested,
    required TResult Function(_RequestCanceled value) requestCanceled,
  }) {
    return requestCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Requested value)? requested,
    TResult Function(_RequestCanceled value)? requestCanceled,
  }) {
    return requestCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Requested value)? requested,
    TResult Function(_RequestCanceled value)? requestCanceled,
    required TResult orElse(),
  }) {
    if (requestCanceled != null) {
      return requestCanceled(this);
    }
    return orElse();
  }
}

abstract class _RequestCanceled implements RideEvent {
  const factory _RequestCanceled(final RideRequest ride) = _$_RequestCanceled;

  RideRequest get ride => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RequestCanceledCopyWith<_$_RequestCanceled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RideState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noRideExist,
    required TResult Function(RideRequest ride) rideWaiting,
    required TResult Function() error,
    required TResult Function() isLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoRideExist value) noRideExist,
    required TResult Function(_RideWaiting value) rideWaiting,
    required TResult Function(_Error value) error,
    required TResult Function(_IsLoading value) isLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideStateCopyWith<$Res> {
  factory $RideStateCopyWith(RideState value, $Res Function(RideState) then) =
      _$RideStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideStateCopyWithImpl<$Res> implements $RideStateCopyWith<$Res> {
  _$RideStateCopyWithImpl(this._value, this._then);

  final RideState _value;
  // ignore: unused_field
  final $Res Function(RideState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$RideStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RideState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noRideExist,
    required TResult Function(RideRequest ride) rideWaiting,
    required TResult Function() error,
    required TResult Function() isLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoRideExist value) noRideExist,
    required TResult Function(_RideWaiting value) rideWaiting,
    required TResult Function(_Error value) error,
    required TResult Function(_IsLoading value) isLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RideState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_NoRideExistCopyWith<$Res> {
  factory _$$_NoRideExistCopyWith(
          _$_NoRideExist value, $Res Function(_$_NoRideExist) then) =
      __$$_NoRideExistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoRideExistCopyWithImpl<$Res> extends _$RideStateCopyWithImpl<$Res>
    implements _$$_NoRideExistCopyWith<$Res> {
  __$$_NoRideExistCopyWithImpl(
      _$_NoRideExist _value, $Res Function(_$_NoRideExist) _then)
      : super(_value, (v) => _then(v as _$_NoRideExist));

  @override
  _$_NoRideExist get _value => super._value as _$_NoRideExist;
}

/// @nodoc

class _$_NoRideExist with DiagnosticableTreeMixin implements _NoRideExist {
  const _$_NoRideExist();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideState.noRideExist()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RideState.noRideExist'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoRideExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noRideExist,
    required TResult Function(RideRequest ride) rideWaiting,
    required TResult Function() error,
    required TResult Function() isLoading,
  }) {
    return noRideExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
  }) {
    return noRideExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
    required TResult orElse(),
  }) {
    if (noRideExist != null) {
      return noRideExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoRideExist value) noRideExist,
    required TResult Function(_RideWaiting value) rideWaiting,
    required TResult Function(_Error value) error,
    required TResult Function(_IsLoading value) isLoading,
  }) {
    return noRideExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
  }) {
    return noRideExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
    required TResult orElse(),
  }) {
    if (noRideExist != null) {
      return noRideExist(this);
    }
    return orElse();
  }
}

abstract class _NoRideExist implements RideState {
  const factory _NoRideExist() = _$_NoRideExist;
}

/// @nodoc
abstract class _$$_RideWaitingCopyWith<$Res> {
  factory _$$_RideWaitingCopyWith(
          _$_RideWaiting value, $Res Function(_$_RideWaiting) then) =
      __$$_RideWaitingCopyWithImpl<$Res>;
  $Res call({RideRequest ride});

  $RideRequestCopyWith<$Res> get ride;
}

/// @nodoc
class __$$_RideWaitingCopyWithImpl<$Res> extends _$RideStateCopyWithImpl<$Res>
    implements _$$_RideWaitingCopyWith<$Res> {
  __$$_RideWaitingCopyWithImpl(
      _$_RideWaiting _value, $Res Function(_$_RideWaiting) _then)
      : super(_value, (v) => _then(v as _$_RideWaiting));

  @override
  _$_RideWaiting get _value => super._value as _$_RideWaiting;

  @override
  $Res call({
    Object? ride = freezed,
  }) {
    return _then(_$_RideWaiting(
      ride == freezed
          ? _value.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as RideRequest,
    ));
  }

  @override
  $RideRequestCopyWith<$Res> get ride {
    return $RideRequestCopyWith<$Res>(_value.ride, (value) {
      return _then(_value.copyWith(ride: value));
    });
  }
}

/// @nodoc

class _$_RideWaiting with DiagnosticableTreeMixin implements _RideWaiting {
  const _$_RideWaiting(this.ride);

  @override
  final RideRequest ride;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideState.rideWaiting(ride: $ride)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RideState.rideWaiting'))
      ..add(DiagnosticsProperty('ride', ride));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RideWaiting &&
            const DeepCollectionEquality().equals(other.ride, ride));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ride));

  @JsonKey(ignore: true)
  @override
  _$$_RideWaitingCopyWith<_$_RideWaiting> get copyWith =>
      __$$_RideWaitingCopyWithImpl<_$_RideWaiting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noRideExist,
    required TResult Function(RideRequest ride) rideWaiting,
    required TResult Function() error,
    required TResult Function() isLoading,
  }) {
    return rideWaiting(ride);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
  }) {
    return rideWaiting?.call(ride);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
    required TResult orElse(),
  }) {
    if (rideWaiting != null) {
      return rideWaiting(ride);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoRideExist value) noRideExist,
    required TResult Function(_RideWaiting value) rideWaiting,
    required TResult Function(_Error value) error,
    required TResult Function(_IsLoading value) isLoading,
  }) {
    return rideWaiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
  }) {
    return rideWaiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
    required TResult orElse(),
  }) {
    if (rideWaiting != null) {
      return rideWaiting(this);
    }
    return orElse();
  }
}

abstract class _RideWaiting implements RideState {
  const factory _RideWaiting(final RideRequest ride) = _$_RideWaiting;

  RideRequest get ride => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RideWaitingCopyWith<_$_RideWaiting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$RideStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RideState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noRideExist,
    required TResult Function(RideRequest ride) rideWaiting,
    required TResult Function() error,
    required TResult Function() isLoading,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoRideExist value) noRideExist,
    required TResult Function(_RideWaiting value) rideWaiting,
    required TResult Function(_Error value) error,
    required TResult Function(_IsLoading value) isLoading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RideState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_IsLoadingCopyWith<$Res> {
  factory _$$_IsLoadingCopyWith(
          _$_IsLoading value, $Res Function(_$_IsLoading) then) =
      __$$_IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsLoadingCopyWithImpl<$Res> extends _$RideStateCopyWithImpl<$Res>
    implements _$$_IsLoadingCopyWith<$Res> {
  __$$_IsLoadingCopyWithImpl(
      _$_IsLoading _value, $Res Function(_$_IsLoading) _then)
      : super(_value, (v) => _then(v as _$_IsLoading));

  @override
  _$_IsLoading get _value => super._value as _$_IsLoading;
}

/// @nodoc

class _$_IsLoading with DiagnosticableTreeMixin implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideState.isLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RideState.isLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noRideExist,
    required TResult Function(RideRequest ride) rideWaiting,
    required TResult Function() error,
    required TResult Function() isLoading,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noRideExist,
    TResult Function(RideRequest ride)? rideWaiting,
    TResult Function()? error,
    TResult Function()? isLoading,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoRideExist value) noRideExist,
    required TResult Function(_RideWaiting value) rideWaiting,
    required TResult Function(_Error value) error,
    required TResult Function(_IsLoading value) isLoading,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoRideExist value)? noRideExist,
    TResult Function(_RideWaiting value)? rideWaiting,
    TResult Function(_Error value)? error,
    TResult Function(_IsLoading value)? isLoading,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements RideState {
  const factory _IsLoading() = _$_IsLoading;
}
