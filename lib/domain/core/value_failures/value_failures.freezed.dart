// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) empty,
    required TResult Function(T value) tooLong,
    required TResult Function(T value) invalidEmail,
    required TResult Function(T value) invalidPassword,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function() adressisloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_TooLong<T> value) tooLong,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_AdressisLoading<T> value) adressisloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<T, $Res> {
  factory _$$_EmptyCopyWith(
          _$_Empty<T> value, $Res Function(_$_Empty<T>) then) =
      __$$_EmptyCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_EmptyCopyWith<T, $Res> {
  __$$_EmptyCopyWithImpl(_$_Empty<T> _value, $Res Function(_$_Empty<T>) _then)
      : super(_value, (v) => _then(v as _$_Empty<T>));

  @override
  _$_Empty<T> get _value => super._value as _$_Empty<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Empty<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Empty<T> with DiagnosticableTreeMixin implements _Empty<T> {
  _$_Empty(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      __$$_EmptyCopyWithImpl<T, _$_Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) empty,
    required TResult Function(T value) tooLong,
    required TResult Function(T value) invalidEmail,
    required TResult Function(T value) invalidPassword,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function() adressisloading,
  }) {
    return empty(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
  }) {
    return empty?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_TooLong<T> value) tooLong,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_AdressisLoading<T> value) adressisloading,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  factory _Empty(final T value) = _$_Empty<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TooLongCopyWith<T, $Res> {
  factory _$$_TooLongCopyWith(
          _$_TooLong<T> value, $Res Function(_$_TooLong<T>) then) =
      __$$_TooLongCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_TooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_TooLongCopyWith<T, $Res> {
  __$$_TooLongCopyWithImpl(
      _$_TooLong<T> _value, $Res Function(_$_TooLong<T>) _then)
      : super(_value, (v) => _then(v as _$_TooLong<T>));

  @override
  _$_TooLong<T> get _value => super._value as _$_TooLong<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_TooLong<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_TooLong<T> with DiagnosticableTreeMixin implements _TooLong<T> {
  _$_TooLong(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.tooLong(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.tooLong'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TooLong<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_TooLongCopyWith<T, _$_TooLong<T>> get copyWith =>
      __$$_TooLongCopyWithImpl<T, _$_TooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) empty,
    required TResult Function(T value) tooLong,
    required TResult Function(T value) invalidEmail,
    required TResult Function(T value) invalidPassword,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function() adressisloading,
  }) {
    return tooLong(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
  }) {
    return tooLong?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_TooLong<T> value) tooLong,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_AdressisLoading<T> value) adressisloading,
  }) {
    return tooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
  }) {
    return tooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(this);
    }
    return orElse();
  }
}

abstract class _TooLong<T> implements ValueFailure<T> {
  factory _TooLong(final T value) = _$_TooLong<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TooLongCopyWith<T, _$_TooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidEmailCopyWith<T, $Res> {
  factory _$$_InvalidEmailCopyWith(
          _$_InvalidEmail<T> value, $Res Function(_$_InvalidEmail<T>) then) =
      __$$_InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_InvalidEmailCopyWith<T, $Res> {
  __$$_InvalidEmailCopyWithImpl(
      _$_InvalidEmail<T> _value, $Res Function(_$_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$_InvalidEmail<T>));

  @override
  _$_InvalidEmail<T> get _value => super._value as _$_InvalidEmail<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_InvalidEmail<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements _InvalidEmail<T> {
  _$_InvalidEmail(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidEmail<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidEmailCopyWith<T, _$_InvalidEmail<T>> get copyWith =>
      __$$_InvalidEmailCopyWithImpl<T, _$_InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) empty,
    required TResult Function(T value) tooLong,
    required TResult Function(T value) invalidEmail,
    required TResult Function(T value) invalidPassword,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function() adressisloading,
  }) {
    return invalidEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
  }) {
    return invalidEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_TooLong<T> value) tooLong,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_AdressisLoading<T> value) adressisloading,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  factory _InvalidEmail(final T value) = _$_InvalidEmail<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_InvalidEmailCopyWith<T, _$_InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidPasswordCopyWith<T, $Res> {
  factory _$$_InvalidPasswordCopyWith(_$_InvalidPassword<T> value,
          $Res Function(_$_InvalidPassword<T>) then) =
      __$$_InvalidPasswordCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_InvalidPasswordCopyWith<T, $Res> {
  __$$_InvalidPasswordCopyWithImpl(
      _$_InvalidPassword<T> _value, $Res Function(_$_InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _$_InvalidPassword<T>));

  @override
  _$_InvalidPassword<T> get _value => super._value as _$_InvalidPassword<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_InvalidPassword<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidPassword<T>
    with DiagnosticableTreeMixin
    implements _InvalidPassword<T> {
  _$_InvalidPassword(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPassword(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPassword'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidPassword<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidPasswordCopyWith<T, _$_InvalidPassword<T>> get copyWith =>
      __$$_InvalidPasswordCopyWithImpl<T, _$_InvalidPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) empty,
    required TResult Function(T value) tooLong,
    required TResult Function(T value) invalidEmail,
    required TResult Function(T value) invalidPassword,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function() adressisloading,
  }) {
    return invalidPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
  }) {
    return invalidPassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_TooLong<T> value) tooLong,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_AdressisLoading<T> value) adressisloading,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class _InvalidPassword<T> implements ValueFailure<T> {
  factory _InvalidPassword(final T value) = _$_InvalidPassword<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_InvalidPasswordCopyWith<T, _$_InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidPhoneNumberCopyWith<T, $Res> {
  factory _$$_InvalidPhoneNumberCopyWith(_$_InvalidPhoneNumber<T> value,
          $Res Function(_$_InvalidPhoneNumber<T>) then) =
      __$$_InvalidPhoneNumberCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_InvalidPhoneNumberCopyWith<T, $Res> {
  __$$_InvalidPhoneNumberCopyWithImpl(_$_InvalidPhoneNumber<T> _value,
      $Res Function(_$_InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as _$_InvalidPhoneNumber<T>));

  @override
  _$_InvalidPhoneNumber<T> get _value =>
      super._value as _$_InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_InvalidPhoneNumber<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidPhoneNumber<T>
    with DiagnosticableTreeMixin
    implements _InvalidPhoneNumber<T> {
  _$_InvalidPhoneNumber(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPhoneNumber(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPhoneNumber'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidPhoneNumber<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidPhoneNumberCopyWith<T, _$_InvalidPhoneNumber<T>> get copyWith =>
      __$$_InvalidPhoneNumberCopyWithImpl<T, _$_InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) empty,
    required TResult Function(T value) tooLong,
    required TResult Function(T value) invalidEmail,
    required TResult Function(T value) invalidPassword,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function() adressisloading,
  }) {
    return invalidPhoneNumber(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
  }) {
    return invalidPhoneNumber?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_TooLong<T> value) tooLong,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_AdressisLoading<T> value) adressisloading,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber<T> implements ValueFailure<T> {
  factory _InvalidPhoneNumber(final T value) = _$_InvalidPhoneNumber<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_InvalidPhoneNumberCopyWith<T, _$_InvalidPhoneNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdressisLoadingCopyWith<T, $Res> {
  factory _$$_AdressisLoadingCopyWith(_$_AdressisLoading<T> value,
          $Res Function(_$_AdressisLoading<T>) then) =
      __$$_AdressisLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_AdressisLoadingCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_AdressisLoadingCopyWith<T, $Res> {
  __$$_AdressisLoadingCopyWithImpl(
      _$_AdressisLoading<T> _value, $Res Function(_$_AdressisLoading<T>) _then)
      : super(_value, (v) => _then(v as _$_AdressisLoading<T>));

  @override
  _$_AdressisLoading<T> get _value => super._value as _$_AdressisLoading<T>;
}

/// @nodoc

class _$_AdressisLoading<T>
    with DiagnosticableTreeMixin
    implements _AdressisLoading<T> {
  _$_AdressisLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.adressisloading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ValueFailure<$T>.adressisloading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AdressisLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) empty,
    required TResult Function(T value) tooLong,
    required TResult Function(T value) invalidEmail,
    required TResult Function(T value) invalidPassword,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function() adressisloading,
  }) {
    return adressisloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
  }) {
    return adressisloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? empty,
    TResult Function(T value)? tooLong,
    TResult Function(T value)? invalidEmail,
    TResult Function(T value)? invalidPassword,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function()? adressisloading,
    required TResult orElse(),
  }) {
    if (adressisloading != null) {
      return adressisloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_TooLong<T> value) tooLong,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_AdressisLoading<T> value) adressisloading,
  }) {
    return adressisloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
  }) {
    return adressisloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_TooLong<T> value)? tooLong,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_AdressisLoading<T> value)? adressisloading,
    required TResult orElse(),
  }) {
    if (adressisloading != null) {
      return adressisloading(this);
    }
    return orElse();
  }
}

abstract class _AdressisLoading<T> implements ValueFailure<T> {
  factory _AdressisLoading() = _$_AdressisLoading<T>;
}
