// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_destination_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchDestinationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LocationAdress cuurentAdress, LatLng currentposition)
        started,
    required TResult Function(String input) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationAdress cuurentAdress, LatLng currentposition)?
        started,
    TResult Function(String input)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationAdress cuurentAdress, LatLng currentposition)?
        started,
    TResult Function(String input)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDestinationEventCopyWith<$Res> {
  factory $SearchDestinationEventCopyWith(SearchDestinationEvent value,
          $Res Function(SearchDestinationEvent) then) =
      _$SearchDestinationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchDestinationEventCopyWithImpl<$Res>
    implements $SearchDestinationEventCopyWith<$Res> {
  _$SearchDestinationEventCopyWithImpl(this._value, this._then);

  final SearchDestinationEvent _value;
  // ignore: unused_field
  final $Res Function(SearchDestinationEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({LocationAdress cuurentAdress, LatLng currentposition});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SearchDestinationEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? cuurentAdress = freezed,
    Object? currentposition = freezed,
  }) {
    return _then(_$_Started(
      cuurentAdress: cuurentAdress == freezed
          ? _value.cuurentAdress
          : cuurentAdress // ignore: cast_nullable_to_non_nullable
              as LocationAdress,
      currentposition: currentposition == freezed
          ? _value.currentposition
          : currentposition // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {required this.cuurentAdress, required this.currentposition});

  @override
  final LocationAdress cuurentAdress;
  @override
  final LatLng currentposition;

  @override
  String toString() {
    return 'SearchDestinationEvent.started(cuurentAdress: $cuurentAdress, currentposition: $currentposition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality()
                .equals(other.cuurentAdress, cuurentAdress) &&
            const DeepCollectionEquality()
                .equals(other.currentposition, currentposition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cuurentAdress),
      const DeepCollectionEquality().hash(currentposition));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LocationAdress cuurentAdress, LatLng currentposition)
        started,
    required TResult Function(String input) search,
  }) {
    return started(cuurentAdress, currentposition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationAdress cuurentAdress, LatLng currentposition)?
        started,
    TResult Function(String input)? search,
  }) {
    return started?.call(cuurentAdress, currentposition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationAdress cuurentAdress, LatLng currentposition)?
        started,
    TResult Function(String input)? search,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(cuurentAdress, currentposition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchDestinationEvent {
  const factory _Started(
      {required final LocationAdress cuurentAdress,
      required final LatLng currentposition}) = _$_Started;

  LocationAdress get cuurentAdress => throw _privateConstructorUsedError;
  LatLng get currentposition => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$SearchDestinationEventCopyWithImpl<$Res>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, (v) => _then(v as _$_Search));

  @override
  _$_Search get _value => super._value as _$_Search;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_$_Search(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'SearchDestinationEvent.search(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LocationAdress cuurentAdress, LatLng currentposition)
        started,
    required TResult Function(String input) search,
  }) {
    return search(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationAdress cuurentAdress, LatLng currentposition)?
        started,
    TResult Function(String input)? search,
  }) {
    return search?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationAdress cuurentAdress, LatLng currentposition)?
        started,
    TResult Function(String input)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchDestinationEvent {
  const factory _Search({required final String input}) = _$_Search;

  String get input => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}
