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
mixin _$Adress {
  LocationAdress get formtatedAdress => throw _privateConstructorUsedError;
  LatLng get position => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdressCopyWith<Adress> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdressCopyWith<$Res> {
  factory $AdressCopyWith(Adress value, $Res Function(Adress) then) =
      _$AdressCopyWithImpl<$Res>;
  $Res call({LocationAdress formtatedAdress, LatLng position, String placeId});
}

/// @nodoc
class _$AdressCopyWithImpl<$Res> implements $AdressCopyWith<$Res> {
  _$AdressCopyWithImpl(this._value, this._then);

  final Adress _value;
  // ignore: unused_field
  final $Res Function(Adress) _then;

  @override
  $Res call({
    Object? formtatedAdress = freezed,
    Object? position = freezed,
    Object? placeId = freezed,
  }) {
    return _then(_value.copyWith(
      formtatedAdress: formtatedAdress == freezed
          ? _value.formtatedAdress
          : formtatedAdress // ignore: cast_nullable_to_non_nullable
              as LocationAdress,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AdressCopyWith<$Res> implements $AdressCopyWith<$Res> {
  factory _$$_AdressCopyWith(_$_Adress value, $Res Function(_$_Adress) then) =
      __$$_AdressCopyWithImpl<$Res>;
  @override
  $Res call({LocationAdress formtatedAdress, LatLng position, String placeId});
}

/// @nodoc
class __$$_AdressCopyWithImpl<$Res> extends _$AdressCopyWithImpl<$Res>
    implements _$$_AdressCopyWith<$Res> {
  __$$_AdressCopyWithImpl(_$_Adress _value, $Res Function(_$_Adress) _then)
      : super(_value, (v) => _then(v as _$_Adress));

  @override
  _$_Adress get _value => super._value as _$_Adress;

  @override
  $Res call({
    Object? formtatedAdress = freezed,
    Object? position = freezed,
    Object? placeId = freezed,
  }) {
    return _then(_$_Adress(
      formtatedAdress: formtatedAdress == freezed
          ? _value.formtatedAdress
          : formtatedAdress // ignore: cast_nullable_to_non_nullable
              as LocationAdress,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Adress implements _Adress {
  const _$_Adress(
      {required this.formtatedAdress,
      required this.position,
      required this.placeId});

  @override
  final LocationAdress formtatedAdress;
  @override
  final LatLng position;
  @override
  final String placeId;

  @override
  String toString() {
    return 'Adress(formtatedAdress: $formtatedAdress, position: $position, placeId: $placeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Adress &&
            const DeepCollectionEquality()
                .equals(other.formtatedAdress, formtatedAdress) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.placeId, placeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(formtatedAdress),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(placeId));

  @JsonKey(ignore: true)
  @override
  _$$_AdressCopyWith<_$_Adress> get copyWith =>
      __$$_AdressCopyWithImpl<_$_Adress>(this, _$identity);
}

abstract class _Adress implements Adress {
  const factory _Adress(
      {required final LocationAdress formtatedAdress,
      required final LatLng position,
      required final String placeId}) = _$_Adress;

  @override
  LocationAdress get formtatedAdress => throw _privateConstructorUsedError;
  @override
  LatLng get position => throw _privateConstructorUsedError;
  @override
  String get placeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AdressCopyWith<_$_Adress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PredictedAdress {
  String get placeId => throw _privateConstructorUsedError;
  String get mainText => throw _privateConstructorUsedError;
  String get secondText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PredictedAdressCopyWith<PredictedAdress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictedAdressCopyWith<$Res> {
  factory $PredictedAdressCopyWith(
          PredictedAdress value, $Res Function(PredictedAdress) then) =
      _$PredictedAdressCopyWithImpl<$Res>;
  $Res call({String placeId, String mainText, String secondText});
}

/// @nodoc
class _$PredictedAdressCopyWithImpl<$Res>
    implements $PredictedAdressCopyWith<$Res> {
  _$PredictedAdressCopyWithImpl(this._value, this._then);

  final PredictedAdress _value;
  // ignore: unused_field
  final $Res Function(PredictedAdress) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? mainText = freezed,
    Object? secondText = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      mainText: mainText == freezed
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String,
      secondText: secondText == freezed
          ? _value.secondText
          : secondText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PredictedAdressCopyWith<$Res>
    implements $PredictedAdressCopyWith<$Res> {
  factory _$$_PredictedAdressCopyWith(
          _$_PredictedAdress value, $Res Function(_$_PredictedAdress) then) =
      __$$_PredictedAdressCopyWithImpl<$Res>;
  @override
  $Res call({String placeId, String mainText, String secondText});
}

/// @nodoc
class __$$_PredictedAdressCopyWithImpl<$Res>
    extends _$PredictedAdressCopyWithImpl<$Res>
    implements _$$_PredictedAdressCopyWith<$Res> {
  __$$_PredictedAdressCopyWithImpl(
      _$_PredictedAdress _value, $Res Function(_$_PredictedAdress) _then)
      : super(_value, (v) => _then(v as _$_PredictedAdress));

  @override
  _$_PredictedAdress get _value => super._value as _$_PredictedAdress;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? mainText = freezed,
    Object? secondText = freezed,
  }) {
    return _then(_$_PredictedAdress(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      mainText: mainText == freezed
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String,
      secondText: secondText == freezed
          ? _value.secondText
          : secondText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PredictedAdress implements _PredictedAdress {
  const _$_PredictedAdress(
      {required this.placeId,
      required this.mainText,
      required this.secondText});

  @override
  final String placeId;
  @override
  final String mainText;
  @override
  final String secondText;

  @override
  String toString() {
    return 'PredictedAdress(placeId: $placeId, mainText: $mainText, secondText: $secondText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PredictedAdress &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.mainText, mainText) &&
            const DeepCollectionEquality()
                .equals(other.secondText, secondText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(mainText),
      const DeepCollectionEquality().hash(secondText));

  @JsonKey(ignore: true)
  @override
  _$$_PredictedAdressCopyWith<_$_PredictedAdress> get copyWith =>
      __$$_PredictedAdressCopyWithImpl<_$_PredictedAdress>(this, _$identity);
}

abstract class _PredictedAdress implements PredictedAdress {
  const factory _PredictedAdress(
      {required final String placeId,
      required final String mainText,
      required final String secondText}) = _$_PredictedAdress;

  @override
  String get placeId => throw _privateConstructorUsedError;
  @override
  String get mainText => throw _privateConstructorUsedError;
  @override
  String get secondText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PredictedAdressCopyWith<_$_PredictedAdress> get copyWith =>
      throw _privateConstructorUsedError;
}
