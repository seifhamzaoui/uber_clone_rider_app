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
