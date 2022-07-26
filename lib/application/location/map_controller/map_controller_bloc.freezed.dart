// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_controller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapControllerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoogleMapController mapcontroller) mapCreated,
    required TResult Function(Position position) currentPositioninit,
    required TResult Function(PlaceDetails destination, Adress origin)
        directionFetched,
    required TResult Function() reseted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_CurrentPostioninit value) currentPositioninit,
    required TResult Function(_directionFetched value) directionFetched,
    required TResult Function(_Reseted value) reseted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapControllerEventCopyWith<$Res> {
  factory $MapControllerEventCopyWith(
          MapControllerEvent value, $Res Function(MapControllerEvent) then) =
      _$MapControllerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapControllerEventCopyWithImpl<$Res>
    implements $MapControllerEventCopyWith<$Res> {
  _$MapControllerEventCopyWithImpl(this._value, this._then);

  final MapControllerEvent _value;
  // ignore: unused_field
  final $Res Function(MapControllerEvent) _then;
}

/// @nodoc
abstract class _$$_MapCreatedCopyWith<$Res> {
  factory _$$_MapCreatedCopyWith(
          _$_MapCreated value, $Res Function(_$_MapCreated) then) =
      __$$_MapCreatedCopyWithImpl<$Res>;
  $Res call({GoogleMapController mapcontroller});
}

/// @nodoc
class __$$_MapCreatedCopyWithImpl<$Res>
    extends _$MapControllerEventCopyWithImpl<$Res>
    implements _$$_MapCreatedCopyWith<$Res> {
  __$$_MapCreatedCopyWithImpl(
      _$_MapCreated _value, $Res Function(_$_MapCreated) _then)
      : super(_value, (v) => _then(v as _$_MapCreated));

  @override
  _$_MapCreated get _value => super._value as _$_MapCreated;

  @override
  $Res call({
    Object? mapcontroller = freezed,
  }) {
    return _then(_$_MapCreated(
      mapcontroller: mapcontroller == freezed
          ? _value.mapcontroller
          : mapcontroller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
    ));
  }
}

/// @nodoc

class _$_MapCreated implements _MapCreated {
  const _$_MapCreated({required this.mapcontroller});

  @override
  final GoogleMapController mapcontroller;

  @override
  String toString() {
    return 'MapControllerEvent.mapCreated(mapcontroller: $mapcontroller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapCreated &&
            const DeepCollectionEquality()
                .equals(other.mapcontroller, mapcontroller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mapcontroller));

  @JsonKey(ignore: true)
  @override
  _$$_MapCreatedCopyWith<_$_MapCreated> get copyWith =>
      __$$_MapCreatedCopyWithImpl<_$_MapCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoogleMapController mapcontroller) mapCreated,
    required TResult Function(Position position) currentPositioninit,
    required TResult Function(PlaceDetails destination, Adress origin)
        directionFetched,
    required TResult Function() reseted,
  }) {
    return mapCreated(mapcontroller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
  }) {
    return mapCreated?.call(mapcontroller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
    required TResult orElse(),
  }) {
    if (mapCreated != null) {
      return mapCreated(mapcontroller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_CurrentPostioninit value) currentPositioninit,
    required TResult Function(_directionFetched value) directionFetched,
    required TResult Function(_Reseted value) reseted,
  }) {
    return mapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
  }) {
    return mapCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
    required TResult orElse(),
  }) {
    if (mapCreated != null) {
      return mapCreated(this);
    }
    return orElse();
  }
}

abstract class _MapCreated implements MapControllerEvent {
  const factory _MapCreated(
      {required final GoogleMapController mapcontroller}) = _$_MapCreated;

  GoogleMapController get mapcontroller => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_MapCreatedCopyWith<_$_MapCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrentPostioninitCopyWith<$Res> {
  factory _$$_CurrentPostioninitCopyWith(_$_CurrentPostioninit value,
          $Res Function(_$_CurrentPostioninit) then) =
      __$$_CurrentPostioninitCopyWithImpl<$Res>;
  $Res call({Position position});
}

/// @nodoc
class __$$_CurrentPostioninitCopyWithImpl<$Res>
    extends _$MapControllerEventCopyWithImpl<$Res>
    implements _$$_CurrentPostioninitCopyWith<$Res> {
  __$$_CurrentPostioninitCopyWithImpl(
      _$_CurrentPostioninit _value, $Res Function(_$_CurrentPostioninit) _then)
      : super(_value, (v) => _then(v as _$_CurrentPostioninit));

  @override
  _$_CurrentPostioninit get _value => super._value as _$_CurrentPostioninit;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_$_CurrentPostioninit(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$_CurrentPostioninit implements _CurrentPostioninit {
  const _$_CurrentPostioninit(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'MapControllerEvent.currentPositioninit(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentPostioninit &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentPostioninitCopyWith<_$_CurrentPostioninit> get copyWith =>
      __$$_CurrentPostioninitCopyWithImpl<_$_CurrentPostioninit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoogleMapController mapcontroller) mapCreated,
    required TResult Function(Position position) currentPositioninit,
    required TResult Function(PlaceDetails destination, Adress origin)
        directionFetched,
    required TResult Function() reseted,
  }) {
    return currentPositioninit(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
  }) {
    return currentPositioninit?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
    required TResult orElse(),
  }) {
    if (currentPositioninit != null) {
      return currentPositioninit(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_CurrentPostioninit value) currentPositioninit,
    required TResult Function(_directionFetched value) directionFetched,
    required TResult Function(_Reseted value) reseted,
  }) {
    return currentPositioninit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
  }) {
    return currentPositioninit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
    required TResult orElse(),
  }) {
    if (currentPositioninit != null) {
      return currentPositioninit(this);
    }
    return orElse();
  }
}

abstract class _CurrentPostioninit implements MapControllerEvent {
  const factory _CurrentPostioninit(final Position position) =
      _$_CurrentPostioninit;

  Position get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CurrentPostioninitCopyWith<_$_CurrentPostioninit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_directionFetchedCopyWith<$Res> {
  factory _$$_directionFetchedCopyWith(
          _$_directionFetched value, $Res Function(_$_directionFetched) then) =
      __$$_directionFetchedCopyWithImpl<$Res>;
  $Res call({PlaceDetails destination, Adress origin});

  $PlaceDetailsCopyWith<$Res> get destination;
  $AdressCopyWith<$Res> get origin;
}

/// @nodoc
class __$$_directionFetchedCopyWithImpl<$Res>
    extends _$MapControllerEventCopyWithImpl<$Res>
    implements _$$_directionFetchedCopyWith<$Res> {
  __$$_directionFetchedCopyWithImpl(
      _$_directionFetched _value, $Res Function(_$_directionFetched) _then)
      : super(_value, (v) => _then(v as _$_directionFetched));

  @override
  _$_directionFetched get _value => super._value as _$_directionFetched;

  @override
  $Res call({
    Object? destination = freezed,
    Object? origin = freezed,
  }) {
    return _then(_$_directionFetched(
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as PlaceDetails,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Adress,
    ));
  }

  @override
  $PlaceDetailsCopyWith<$Res> get destination {
    return $PlaceDetailsCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }

  @override
  $AdressCopyWith<$Res> get origin {
    return $AdressCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value));
    });
  }
}

/// @nodoc

class _$_directionFetched implements _directionFetched {
  const _$_directionFetched({required this.destination, required this.origin});

  @override
  final PlaceDetails destination;
  @override
  final Adress origin;

  @override
  String toString() {
    return 'MapControllerEvent.directionFetched(destination: $destination, origin: $origin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_directionFetched &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.origin, origin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(origin));

  @JsonKey(ignore: true)
  @override
  _$$_directionFetchedCopyWith<_$_directionFetched> get copyWith =>
      __$$_directionFetchedCopyWithImpl<_$_directionFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoogleMapController mapcontroller) mapCreated,
    required TResult Function(Position position) currentPositioninit,
    required TResult Function(PlaceDetails destination, Adress origin)
        directionFetched,
    required TResult Function() reseted,
  }) {
    return directionFetched(destination, origin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
  }) {
    return directionFetched?.call(destination, origin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
    required TResult orElse(),
  }) {
    if (directionFetched != null) {
      return directionFetched(destination, origin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_CurrentPostioninit value) currentPositioninit,
    required TResult Function(_directionFetched value) directionFetched,
    required TResult Function(_Reseted value) reseted,
  }) {
    return directionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
  }) {
    return directionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
    required TResult orElse(),
  }) {
    if (directionFetched != null) {
      return directionFetched(this);
    }
    return orElse();
  }
}

abstract class _directionFetched implements MapControllerEvent {
  const factory _directionFetched(
      {required final PlaceDetails destination,
      required final Adress origin}) = _$_directionFetched;

  PlaceDetails get destination => throw _privateConstructorUsedError;
  Adress get origin => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_directionFetchedCopyWith<_$_directionFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetedCopyWith<$Res> {
  factory _$$_ResetedCopyWith(
          _$_Reseted value, $Res Function(_$_Reseted) then) =
      __$$_ResetedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetedCopyWithImpl<$Res>
    extends _$MapControllerEventCopyWithImpl<$Res>
    implements _$$_ResetedCopyWith<$Res> {
  __$$_ResetedCopyWithImpl(_$_Reseted _value, $Res Function(_$_Reseted) _then)
      : super(_value, (v) => _then(v as _$_Reseted));

  @override
  _$_Reseted get _value => super._value as _$_Reseted;
}

/// @nodoc

class _$_Reseted implements _Reseted {
  const _$_Reseted();

  @override
  String toString() {
    return 'MapControllerEvent.reseted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reseted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoogleMapController mapcontroller) mapCreated,
    required TResult Function(Position position) currentPositioninit,
    required TResult Function(PlaceDetails destination, Adress origin)
        directionFetched,
    required TResult Function() reseted,
  }) {
    return reseted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
  }) {
    return reseted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoogleMapController mapcontroller)? mapCreated,
    TResult Function(Position position)? currentPositioninit,
    TResult Function(PlaceDetails destination, Adress origin)? directionFetched,
    TResult Function()? reseted,
    required TResult orElse(),
  }) {
    if (reseted != null) {
      return reseted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapCreated value) mapCreated,
    required TResult Function(_CurrentPostioninit value) currentPositioninit,
    required TResult Function(_directionFetched value) directionFetched,
    required TResult Function(_Reseted value) reseted,
  }) {
    return reseted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
  }) {
    return reseted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapCreated value)? mapCreated,
    TResult Function(_CurrentPostioninit value)? currentPositioninit,
    TResult Function(_directionFetched value)? directionFetched,
    TResult Function(_Reseted value)? reseted,
    required TResult orElse(),
  }) {
    if (reseted != null) {
      return reseted(this);
    }
    return orElse();
  }
}

abstract class _Reseted implements MapControllerEvent {
  const factory _Reseted() = _$_Reseted;
}
