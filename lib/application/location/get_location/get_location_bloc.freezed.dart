// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationEventCopyWith<$Res> {
  factory $GetLocationEventCopyWith(
          GetLocationEvent value, $Res Function(GetLocationEvent) then) =
      _$GetLocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationEventCopyWithImpl<$Res>
    implements $GetLocationEventCopyWith<$Res> {
  _$GetLocationEventCopyWithImpl(this._value, this._then);

  final GetLocationEvent _value;
  // ignore: unused_field
  final $Res Function(GetLocationEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$GetLocationEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'GetLocationEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GetLocationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$GetLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function(Position postion) positionlocated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(_Positionlocated value) positionlocated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationStateCopyWith<$Res> {
  factory $GetLocationStateCopyWith(
          GetLocationState value, $Res Function(GetLocationState) then) =
      _$GetLocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationStateCopyWithImpl<$Res>
    implements $GetLocationStateCopyWith<$Res> {
  _$GetLocationStateCopyWithImpl(this._value, this._then);

  final GetLocationState _value;
  // ignore: unused_field
  final $Res Function(GetLocationState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GetLocationStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GetLocationState.initial()';
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
    required TResult Function() loading,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function(Position postion) positionlocated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(_Positionlocated value) positionlocated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetLocationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$GetLocationStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GetLocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function(Position postion) positionlocated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(_Positionlocated value) positionlocated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetLocationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LocationServiceDisabledCopyWith<$Res> {
  factory _$$_LocationServiceDisabledCopyWith(_$_LocationServiceDisabled value,
          $Res Function(_$_LocationServiceDisabled) then) =
      __$$_LocationServiceDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocationServiceDisabledCopyWithImpl<$Res>
    extends _$GetLocationStateCopyWithImpl<$Res>
    implements _$$_LocationServiceDisabledCopyWith<$Res> {
  __$$_LocationServiceDisabledCopyWithImpl(_$_LocationServiceDisabled _value,
      $Res Function(_$_LocationServiceDisabled) _then)
      : super(_value, (v) => _then(v as _$_LocationServiceDisabled));

  @override
  _$_LocationServiceDisabled get _value =>
      super._value as _$_LocationServiceDisabled;
}

/// @nodoc

class _$_LocationServiceDisabled implements _LocationServiceDisabled {
  const _$_LocationServiceDisabled();

  @override
  String toString() {
    return 'GetLocationState.locationServiceDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationServiceDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function(Position postion) positionlocated,
  }) {
    return locationServiceDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
  }) {
    return locationServiceDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
    required TResult orElse(),
  }) {
    if (locationServiceDisabled != null) {
      return locationServiceDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(_Positionlocated value) positionlocated,
  }) {
    return locationServiceDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
  }) {
    return locationServiceDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
    required TResult orElse(),
  }) {
    if (locationServiceDisabled != null) {
      return locationServiceDisabled(this);
    }
    return orElse();
  }
}

abstract class _LocationServiceDisabled implements GetLocationState {
  const factory _LocationServiceDisabled() = _$_LocationServiceDisabled;
}

/// @nodoc
abstract class _$$_LocationPermissionDeniedCopyWith<$Res> {
  factory _$$_LocationPermissionDeniedCopyWith(
          _$_LocationPermissionDenied value,
          $Res Function(_$_LocationPermissionDenied) then) =
      __$$_LocationPermissionDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocationPermissionDeniedCopyWithImpl<$Res>
    extends _$GetLocationStateCopyWithImpl<$Res>
    implements _$$_LocationPermissionDeniedCopyWith<$Res> {
  __$$_LocationPermissionDeniedCopyWithImpl(_$_LocationPermissionDenied _value,
      $Res Function(_$_LocationPermissionDenied) _then)
      : super(_value, (v) => _then(v as _$_LocationPermissionDenied));

  @override
  _$_LocationPermissionDenied get _value =>
      super._value as _$_LocationPermissionDenied;
}

/// @nodoc

class _$_LocationPermissionDenied implements _LocationPermissionDenied {
  const _$_LocationPermissionDenied();

  @override
  String toString() {
    return 'GetLocationState.locationPermissionDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationPermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function(Position postion) positionlocated,
  }) {
    return locationPermissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
  }) {
    return locationPermissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
    required TResult orElse(),
  }) {
    if (locationPermissionDenied != null) {
      return locationPermissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(_Positionlocated value) positionlocated,
  }) {
    return locationPermissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
  }) {
    return locationPermissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
    required TResult orElse(),
  }) {
    if (locationPermissionDenied != null) {
      return locationPermissionDenied(this);
    }
    return orElse();
  }
}

abstract class _LocationPermissionDenied implements GetLocationState {
  const factory _LocationPermissionDenied() = _$_LocationPermissionDenied;
}

/// @nodoc
abstract class _$$_PositionlocatedCopyWith<$Res> {
  factory _$$_PositionlocatedCopyWith(
          _$_Positionlocated value, $Res Function(_$_Positionlocated) then) =
      __$$_PositionlocatedCopyWithImpl<$Res>;
  $Res call({Position postion});
}

/// @nodoc
class __$$_PositionlocatedCopyWithImpl<$Res>
    extends _$GetLocationStateCopyWithImpl<$Res>
    implements _$$_PositionlocatedCopyWith<$Res> {
  __$$_PositionlocatedCopyWithImpl(
      _$_Positionlocated _value, $Res Function(_$_Positionlocated) _then)
      : super(_value, (v) => _then(v as _$_Positionlocated));

  @override
  _$_Positionlocated get _value => super._value as _$_Positionlocated;

  @override
  $Res call({
    Object? postion = freezed,
  }) {
    return _then(_$_Positionlocated(
      postion == freezed
          ? _value.postion
          : postion // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$_Positionlocated implements _Positionlocated {
  const _$_Positionlocated(this.postion);

  @override
  final Position postion;

  @override
  String toString() {
    return 'GetLocationState.positionlocated(postion: $postion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Positionlocated &&
            const DeepCollectionEquality().equals(other.postion, postion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postion));

  @JsonKey(ignore: true)
  @override
  _$$_PositionlocatedCopyWith<_$_Positionlocated> get copyWith =>
      __$$_PositionlocatedCopyWithImpl<_$_Positionlocated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
    required TResult Function(Position postion) positionlocated,
  }) {
    return positionlocated(postion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
  }) {
    return positionlocated?.call(postion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    TResult Function(Position postion)? positionlocated,
    required TResult orElse(),
  }) {
    if (positionlocated != null) {
      return positionlocated(postion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(_Positionlocated value) positionlocated,
  }) {
    return positionlocated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
  }) {
    return positionlocated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_Positionlocated value)? positionlocated,
    required TResult orElse(),
  }) {
    if (positionlocated != null) {
      return positionlocated(this);
    }
    return orElse();
  }
}

abstract class _Positionlocated implements GetLocationState {
  const factory _Positionlocated(final Position postion) = _$_Positionlocated;

  Position get postion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PositionlocatedCopyWith<_$_Positionlocated> get copyWith =>
      throw _privateConstructorUsedError;
}
