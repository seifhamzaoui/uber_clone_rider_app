// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'adress_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdressDto _$AdressDtoFromJson(Map<String, dynamic> json) {
  return _AdressDto.fromJson(json);
}

/// @nodoc
mixin _$AdressDto {
  String get formatted_address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdressDtoCopyWith<AdressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdressDtoCopyWith<$Res> {
  factory $AdressDtoCopyWith(AdressDto value, $Res Function(AdressDto) then) =
      _$AdressDtoCopyWithImpl<$Res>;
  $Res call({String formatted_address});
}

/// @nodoc
class _$AdressDtoCopyWithImpl<$Res> implements $AdressDtoCopyWith<$Res> {
  _$AdressDtoCopyWithImpl(this._value, this._then);

  final AdressDto _value;
  // ignore: unused_field
  final $Res Function(AdressDto) _then;

  @override
  $Res call({
    Object? formatted_address = freezed,
  }) {
    return _then(_value.copyWith(
      formatted_address: formatted_address == freezed
          ? _value.formatted_address
          : formatted_address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AdressDtoCopyWith<$Res> implements $AdressDtoCopyWith<$Res> {
  factory _$$_AdressDtoCopyWith(
          _$_AdressDto value, $Res Function(_$_AdressDto) then) =
      __$$_AdressDtoCopyWithImpl<$Res>;
  @override
  $Res call({String formatted_address});
}

/// @nodoc
class __$$_AdressDtoCopyWithImpl<$Res> extends _$AdressDtoCopyWithImpl<$Res>
    implements _$$_AdressDtoCopyWith<$Res> {
  __$$_AdressDtoCopyWithImpl(
      _$_AdressDto _value, $Res Function(_$_AdressDto) _then)
      : super(_value, (v) => _then(v as _$_AdressDto));

  @override
  _$_AdressDto get _value => super._value as _$_AdressDto;

  @override
  $Res call({
    Object? formatted_address = freezed,
  }) {
    return _then(_$_AdressDto(
      formatted_address: formatted_address == freezed
          ? _value.formatted_address
          : formatted_address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdressDto implements _AdressDto {
  const _$_AdressDto({required this.formatted_address});

  factory _$_AdressDto.fromJson(Map<String, dynamic> json) =>
      _$$_AdressDtoFromJson(json);

  @override
  final String formatted_address;

  @override
  String toString() {
    return 'AdressDto(formatted_address: $formatted_address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdressDto &&
            const DeepCollectionEquality()
                .equals(other.formatted_address, formatted_address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(formatted_address));

  @JsonKey(ignore: true)
  @override
  _$$_AdressDtoCopyWith<_$_AdressDto> get copyWith =>
      __$$_AdressDtoCopyWithImpl<_$_AdressDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdressDtoToJson(this);
  }
}

abstract class _AdressDto implements AdressDto {
  const factory _AdressDto({required final String formatted_address}) =
      _$_AdressDto;

  factory _AdressDto.fromJson(Map<String, dynamic> json) =
      _$_AdressDto.fromJson;

  @override
  String get formatted_address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AdressDtoCopyWith<_$_AdressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PredictionAdressDto _$PredictionAdressDtoFromJson(Map<String, dynamic> json) {
  return _PredictionAdressDto.fromJson(json);
}

/// @nodoc
mixin _$PredictionAdressDto {
  String get place_id => throw _privateConstructorUsedError;
  @JsonKey(readValue: _predictedNamesFromjson)
  String get main_text => throw _privateConstructorUsedError;
  @JsonKey(readValue: _predictedNamesFromjson)
  String get secondary_text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionAdressDtoCopyWith<PredictionAdressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionAdressDtoCopyWith<$Res> {
  factory $PredictionAdressDtoCopyWith(
          PredictionAdressDto value, $Res Function(PredictionAdressDto) then) =
      _$PredictionAdressDtoCopyWithImpl<$Res>;
  $Res call(
      {String place_id,
      @JsonKey(readValue: _predictedNamesFromjson) String main_text,
      @JsonKey(readValue: _predictedNamesFromjson) String secondary_text});
}

/// @nodoc
class _$PredictionAdressDtoCopyWithImpl<$Res>
    implements $PredictionAdressDtoCopyWith<$Res> {
  _$PredictionAdressDtoCopyWithImpl(this._value, this._then);

  final PredictionAdressDto _value;
  // ignore: unused_field
  final $Res Function(PredictionAdressDto) _then;

  @override
  $Res call({
    Object? place_id = freezed,
    Object? main_text = freezed,
    Object? secondary_text = freezed,
  }) {
    return _then(_value.copyWith(
      place_id: place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
      main_text: main_text == freezed
          ? _value.main_text
          : main_text // ignore: cast_nullable_to_non_nullable
              as String,
      secondary_text: secondary_text == freezed
          ? _value.secondary_text
          : secondary_text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PredictionAdressDtoCopyWith<$Res>
    implements $PredictionAdressDtoCopyWith<$Res> {
  factory _$$_PredictionAdressDtoCopyWith(_$_PredictionAdressDto value,
          $Res Function(_$_PredictionAdressDto) then) =
      __$$_PredictionAdressDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String place_id,
      @JsonKey(readValue: _predictedNamesFromjson) String main_text,
      @JsonKey(readValue: _predictedNamesFromjson) String secondary_text});
}

/// @nodoc
class __$$_PredictionAdressDtoCopyWithImpl<$Res>
    extends _$PredictionAdressDtoCopyWithImpl<$Res>
    implements _$$_PredictionAdressDtoCopyWith<$Res> {
  __$$_PredictionAdressDtoCopyWithImpl(_$_PredictionAdressDto _value,
      $Res Function(_$_PredictionAdressDto) _then)
      : super(_value, (v) => _then(v as _$_PredictionAdressDto));

  @override
  _$_PredictionAdressDto get _value => super._value as _$_PredictionAdressDto;

  @override
  $Res call({
    Object? place_id = freezed,
    Object? main_text = freezed,
    Object? secondary_text = freezed,
  }) {
    return _then(_$_PredictionAdressDto(
      place_id: place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
      main_text: main_text == freezed
          ? _value.main_text
          : main_text // ignore: cast_nullable_to_non_nullable
              as String,
      secondary_text: secondary_text == freezed
          ? _value.secondary_text
          : secondary_text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PredictionAdressDto extends _PredictionAdressDto {
  _$_PredictionAdressDto(
      {required this.place_id,
      @JsonKey(readValue: _predictedNamesFromjson)
          required this.main_text,
      @JsonKey(readValue: _predictedNamesFromjson)
          required this.secondary_text})
      : super._();

  factory _$_PredictionAdressDto.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionAdressDtoFromJson(json);

  @override
  final String place_id;
  @override
  @JsonKey(readValue: _predictedNamesFromjson)
  final String main_text;
  @override
  @JsonKey(readValue: _predictedNamesFromjson)
  final String secondary_text;

  @override
  String toString() {
    return 'PredictionAdressDto(place_id: $place_id, main_text: $main_text, secondary_text: $secondary_text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PredictionAdressDto &&
            const DeepCollectionEquality().equals(other.place_id, place_id) &&
            const DeepCollectionEquality().equals(other.main_text, main_text) &&
            const DeepCollectionEquality()
                .equals(other.secondary_text, secondary_text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(place_id),
      const DeepCollectionEquality().hash(main_text),
      const DeepCollectionEquality().hash(secondary_text));

  @JsonKey(ignore: true)
  @override
  _$$_PredictionAdressDtoCopyWith<_$_PredictionAdressDto> get copyWith =>
      __$$_PredictionAdressDtoCopyWithImpl<_$_PredictionAdressDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionAdressDtoToJson(this);
  }
}

abstract class _PredictionAdressDto extends PredictionAdressDto {
  factory _PredictionAdressDto(
      {required final String place_id,
      @JsonKey(readValue: _predictedNamesFromjson)
          required final String main_text,
      @JsonKey(readValue: _predictedNamesFromjson)
          required final String secondary_text}) = _$_PredictionAdressDto;
  _PredictionAdressDto._() : super._();

  factory _PredictionAdressDto.fromJson(Map<String, dynamic> json) =
      _$_PredictionAdressDto.fromJson;

  @override
  String get place_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(readValue: _predictedNamesFromjson)
  String get main_text => throw _privateConstructorUsedError;
  @override
  @JsonKey(readValue: _predictedNamesFromjson)
  String get secondary_text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PredictionAdressDtoCopyWith<_$_PredictionAdressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceDetailsDto _$PlaceDetailsDtoFromJson(Map<String, dynamic> json) {
  return _PlaceDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceDetailsDto {
  String get place_id => throw _privateConstructorUsedError;
  String get formatted_address => throw _privateConstructorUsedError;
  @JsonKey(readValue: _latlngFromjson)
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(readValue: _latlngFromjson)
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDetailsDtoCopyWith<PlaceDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailsDtoCopyWith<$Res> {
  factory $PlaceDetailsDtoCopyWith(
          PlaceDetailsDto value, $Res Function(PlaceDetailsDto) then) =
      _$PlaceDetailsDtoCopyWithImpl<$Res>;
  $Res call(
      {String place_id,
      String formatted_address,
      @JsonKey(readValue: _latlngFromjson) double lat,
      @JsonKey(readValue: _latlngFromjson) double lng});
}

/// @nodoc
class _$PlaceDetailsDtoCopyWithImpl<$Res>
    implements $PlaceDetailsDtoCopyWith<$Res> {
  _$PlaceDetailsDtoCopyWithImpl(this._value, this._then);

  final PlaceDetailsDto _value;
  // ignore: unused_field
  final $Res Function(PlaceDetailsDto) _then;

  @override
  $Res call({
    Object? place_id = freezed,
    Object? formatted_address = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      place_id: place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
      formatted_address: formatted_address == freezed
          ? _value.formatted_address
          : formatted_address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceDetailsDtoCopyWith<$Res>
    implements $PlaceDetailsDtoCopyWith<$Res> {
  factory _$$_PlaceDetailsDtoCopyWith(
          _$_PlaceDetailsDto value, $Res Function(_$_PlaceDetailsDto) then) =
      __$$_PlaceDetailsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String place_id,
      String formatted_address,
      @JsonKey(readValue: _latlngFromjson) double lat,
      @JsonKey(readValue: _latlngFromjson) double lng});
}

/// @nodoc
class __$$_PlaceDetailsDtoCopyWithImpl<$Res>
    extends _$PlaceDetailsDtoCopyWithImpl<$Res>
    implements _$$_PlaceDetailsDtoCopyWith<$Res> {
  __$$_PlaceDetailsDtoCopyWithImpl(
      _$_PlaceDetailsDto _value, $Res Function(_$_PlaceDetailsDto) _then)
      : super(_value, (v) => _then(v as _$_PlaceDetailsDto));

  @override
  _$_PlaceDetailsDto get _value => super._value as _$_PlaceDetailsDto;

  @override
  $Res call({
    Object? place_id = freezed,
    Object? formatted_address = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_PlaceDetailsDto(
      place_id: place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
      formatted_address: formatted_address == freezed
          ? _value.formatted_address
          : formatted_address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceDetailsDto extends _PlaceDetailsDto {
  const _$_PlaceDetailsDto(
      {required this.place_id,
      required this.formatted_address,
      @JsonKey(readValue: _latlngFromjson) required this.lat,
      @JsonKey(readValue: _latlngFromjson) required this.lng})
      : super._();

  factory _$_PlaceDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDetailsDtoFromJson(json);

  @override
  final String place_id;
  @override
  final String formatted_address;
  @override
  @JsonKey(readValue: _latlngFromjson)
  final double lat;
  @override
  @JsonKey(readValue: _latlngFromjson)
  final double lng;

  @override
  String toString() {
    return 'PlaceDetailsDto(place_id: $place_id, formatted_address: $formatted_address, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceDetailsDto &&
            const DeepCollectionEquality().equals(other.place_id, place_id) &&
            const DeepCollectionEquality()
                .equals(other.formatted_address, formatted_address) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(place_id),
      const DeepCollectionEquality().hash(formatted_address),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceDetailsDtoCopyWith<_$_PlaceDetailsDto> get copyWith =>
      __$$_PlaceDetailsDtoCopyWithImpl<_$_PlaceDetailsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDetailsDtoToJson(this);
  }
}

abstract class _PlaceDetailsDto extends PlaceDetailsDto {
  const factory _PlaceDetailsDto(
          {required final String place_id,
          required final String formatted_address,
          @JsonKey(readValue: _latlngFromjson) required final double lat,
          @JsonKey(readValue: _latlngFromjson) required final double lng}) =
      _$_PlaceDetailsDto;
  const _PlaceDetailsDto._() : super._();

  factory _PlaceDetailsDto.fromJson(Map<String, dynamic> json) =
      _$_PlaceDetailsDto.fromJson;

  @override
  String get place_id => throw _privateConstructorUsedError;
  @override
  String get formatted_address => throw _privateConstructorUsedError;
  @override
  @JsonKey(readValue: _latlngFromjson)
  double get lat => throw _privateConstructorUsedError;
  @override
  @JsonKey(readValue: _latlngFromjson)
  double get lng => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDetailsDtoCopyWith<_$_PlaceDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectionDetailsDto _$DirectionDetailsDtoFromJson(Map<String, dynamic> json) {
  return _DirectionDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$DirectionDetailsDto {
  @JsonKey(readValue: distanceValuefromJson)
  double get distanceValue => throw _privateConstructorUsedError;
  @JsonKey(readValue: distanceTextfromJson)
  String get distanceText => throw _privateConstructorUsedError;
  @JsonKey(readValue: durationValuefromJson)
  double get durationValue => throw _privateConstructorUsedError;
  @JsonKey(readValue: durationTextfromJson)
  String get durationText => throw _privateConstructorUsedError;
  @JsonKey(name: 'points', readValue: polyLinefromjson)
  String get polyLinePoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionDetailsDtoCopyWith<DirectionDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionDetailsDtoCopyWith<$Res> {
  factory $DirectionDetailsDtoCopyWith(
          DirectionDetailsDto value, $Res Function(DirectionDetailsDto) then) =
      _$DirectionDetailsDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(readValue: distanceValuefromJson)
          double distanceValue,
      @JsonKey(readValue: distanceTextfromJson)
          String distanceText,
      @JsonKey(readValue: durationValuefromJson)
          double durationValue,
      @JsonKey(readValue: durationTextfromJson)
          String durationText,
      @JsonKey(name: 'points', readValue: polyLinefromjson)
          String polyLinePoints});
}

/// @nodoc
class _$DirectionDetailsDtoCopyWithImpl<$Res>
    implements $DirectionDetailsDtoCopyWith<$Res> {
  _$DirectionDetailsDtoCopyWithImpl(this._value, this._then);

  final DirectionDetailsDto _value;
  // ignore: unused_field
  final $Res Function(DirectionDetailsDto) _then;

  @override
  $Res call({
    Object? distanceValue = freezed,
    Object? distanceText = freezed,
    Object? durationValue = freezed,
    Object? durationText = freezed,
    Object? polyLinePoints = freezed,
  }) {
    return _then(_value.copyWith(
      distanceValue: distanceValue == freezed
          ? _value.distanceValue
          : distanceValue // ignore: cast_nullable_to_non_nullable
              as double,
      distanceText: distanceText == freezed
          ? _value.distanceText
          : distanceText // ignore: cast_nullable_to_non_nullable
              as String,
      durationValue: durationValue == freezed
          ? _value.durationValue
          : durationValue // ignore: cast_nullable_to_non_nullable
              as double,
      durationText: durationText == freezed
          ? _value.durationText
          : durationText // ignore: cast_nullable_to_non_nullable
              as String,
      polyLinePoints: polyLinePoints == freezed
          ? _value.polyLinePoints
          : polyLinePoints // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DirectionDetailsDtoCopyWith<$Res>
    implements $DirectionDetailsDtoCopyWith<$Res> {
  factory _$$_DirectionDetailsDtoCopyWith(_$_DirectionDetailsDto value,
          $Res Function(_$_DirectionDetailsDto) then) =
      __$$_DirectionDetailsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(readValue: distanceValuefromJson)
          double distanceValue,
      @JsonKey(readValue: distanceTextfromJson)
          String distanceText,
      @JsonKey(readValue: durationValuefromJson)
          double durationValue,
      @JsonKey(readValue: durationTextfromJson)
          String durationText,
      @JsonKey(name: 'points', readValue: polyLinefromjson)
          String polyLinePoints});
}

/// @nodoc
class __$$_DirectionDetailsDtoCopyWithImpl<$Res>
    extends _$DirectionDetailsDtoCopyWithImpl<$Res>
    implements _$$_DirectionDetailsDtoCopyWith<$Res> {
  __$$_DirectionDetailsDtoCopyWithImpl(_$_DirectionDetailsDto _value,
      $Res Function(_$_DirectionDetailsDto) _then)
      : super(_value, (v) => _then(v as _$_DirectionDetailsDto));

  @override
  _$_DirectionDetailsDto get _value => super._value as _$_DirectionDetailsDto;

  @override
  $Res call({
    Object? distanceValue = freezed,
    Object? distanceText = freezed,
    Object? durationValue = freezed,
    Object? durationText = freezed,
    Object? polyLinePoints = freezed,
  }) {
    return _then(_$_DirectionDetailsDto(
      distanceValue: distanceValue == freezed
          ? _value.distanceValue
          : distanceValue // ignore: cast_nullable_to_non_nullable
              as double,
      distanceText: distanceText == freezed
          ? _value.distanceText
          : distanceText // ignore: cast_nullable_to_non_nullable
              as String,
      durationValue: durationValue == freezed
          ? _value.durationValue
          : durationValue // ignore: cast_nullable_to_non_nullable
              as double,
      durationText: durationText == freezed
          ? _value.durationText
          : durationText // ignore: cast_nullable_to_non_nullable
              as String,
      polyLinePoints: polyLinePoints == freezed
          ? _value.polyLinePoints
          : polyLinePoints // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionDetailsDto extends _DirectionDetailsDto {
  const _$_DirectionDetailsDto(
      {@JsonKey(readValue: distanceValuefromJson)
          required this.distanceValue,
      @JsonKey(readValue: distanceTextfromJson)
          required this.distanceText,
      @JsonKey(readValue: durationValuefromJson)
          required this.durationValue,
      @JsonKey(readValue: durationTextfromJson)
          required this.durationText,
      @JsonKey(name: 'points', readValue: polyLinefromjson)
          required this.polyLinePoints})
      : super._();

  factory _$_DirectionDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionDetailsDtoFromJson(json);

  @override
  @JsonKey(readValue: distanceValuefromJson)
  final double distanceValue;
  @override
  @JsonKey(readValue: distanceTextfromJson)
  final String distanceText;
  @override
  @JsonKey(readValue: durationValuefromJson)
  final double durationValue;
  @override
  @JsonKey(readValue: durationTextfromJson)
  final String durationText;
  @override
  @JsonKey(name: 'points', readValue: polyLinefromjson)
  final String polyLinePoints;

  @override
  String toString() {
    return 'DirectionDetailsDto(distanceValue: $distanceValue, distanceText: $distanceText, durationValue: $durationValue, durationText: $durationText, polyLinePoints: $polyLinePoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionDetailsDto &&
            const DeepCollectionEquality()
                .equals(other.distanceValue, distanceValue) &&
            const DeepCollectionEquality()
                .equals(other.distanceText, distanceText) &&
            const DeepCollectionEquality()
                .equals(other.durationValue, durationValue) &&
            const DeepCollectionEquality()
                .equals(other.durationText, durationText) &&
            const DeepCollectionEquality()
                .equals(other.polyLinePoints, polyLinePoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(distanceValue),
      const DeepCollectionEquality().hash(distanceText),
      const DeepCollectionEquality().hash(durationValue),
      const DeepCollectionEquality().hash(durationText),
      const DeepCollectionEquality().hash(polyLinePoints));

  @JsonKey(ignore: true)
  @override
  _$$_DirectionDetailsDtoCopyWith<_$_DirectionDetailsDto> get copyWith =>
      __$$_DirectionDetailsDtoCopyWithImpl<_$_DirectionDetailsDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionDetailsDtoToJson(this);
  }
}

abstract class _DirectionDetailsDto extends DirectionDetailsDto {
  const factory _DirectionDetailsDto(
      {@JsonKey(readValue: distanceValuefromJson)
          required final double distanceValue,
      @JsonKey(readValue: distanceTextfromJson)
          required final String distanceText,
      @JsonKey(readValue: durationValuefromJson)
          required final double durationValue,
      @JsonKey(readValue: durationTextfromJson)
          required final String durationText,
      @JsonKey(name: 'points', readValue: polyLinefromjson)
          required final String polyLinePoints}) = _$_DirectionDetailsDto;
  const _DirectionDetailsDto._() : super._();

  factory _DirectionDetailsDto.fromJson(Map<String, dynamic> json) =
      _$_DirectionDetailsDto.fromJson;

  @override
  @JsonKey(readValue: distanceValuefromJson)
  double get distanceValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(readValue: distanceTextfromJson)
  String get distanceText => throw _privateConstructorUsedError;
  @override
  @JsonKey(readValue: durationValuefromJson)
  double get durationValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(readValue: durationTextfromJson)
  String get durationText => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'points', readValue: polyLinefromjson)
  String get polyLinePoints => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionDetailsDtoCopyWith<_$_DirectionDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
