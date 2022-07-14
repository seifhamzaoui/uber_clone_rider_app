// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneNumberChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class _$$_FullnameChangedCopyWith<$Res> {
  factory _$$_FullnameChangedCopyWith(
          _$_FullnameChanged value, $Res Function(_$_FullnameChanged) then) =
      __$$_FullnameChangedCopyWithImpl<$Res>;
  $Res call({String fullnameStr});
}

/// @nodoc
class __$$_FullnameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_FullnameChangedCopyWith<$Res> {
  __$$_FullnameChangedCopyWithImpl(
      _$_FullnameChanged _value, $Res Function(_$_FullnameChanged) _then)
      : super(_value, (v) => _then(v as _$_FullnameChanged));

  @override
  _$_FullnameChanged get _value => super._value as _$_FullnameChanged;

  @override
  $Res call({
    Object? fullnameStr = freezed,
  }) {
    return _then(_$_FullnameChanged(
      fullnameStr == freezed
          ? _value.fullnameStr
          : fullnameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FullnameChanged implements _FullnameChanged {
  const _$_FullnameChanged(this.fullnameStr);

  @override
  final String fullnameStr;

  @override
  String toString() {
    return 'RegisterEvent.fullnameChanged(fullnameStr: $fullnameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullnameChanged &&
            const DeepCollectionEquality()
                .equals(other.fullnameStr, fullnameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fullnameStr));

  @JsonKey(ignore: true)
  @override
  _$$_FullnameChangedCopyWith<_$_FullnameChanged> get copyWith =>
      __$$_FullnameChangedCopyWithImpl<_$_FullnameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneNumberChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() register,
  }) {
    return fullnameChanged(fullnameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
  }) {
    return fullnameChanged?.call(fullnameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (fullnameChanged != null) {
      return fullnameChanged(fullnameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Register value) register,
  }) {
    return fullnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
  }) {
    return fullnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (fullnameChanged != null) {
      return fullnameChanged(this);
    }
    return orElse();
  }
}

abstract class _FullnameChanged implements RegisterEvent {
  const factory _FullnameChanged(final String fullnameStr) = _$_FullnameChanged;

  String get fullnameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FullnameChangedCopyWith<_$_FullnameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailChanged));

  @override
  _$_EmailChanged get _value => super._value as _$_EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_$_EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            const DeepCollectionEquality().equals(other.emailStr, emailStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailStr));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneNumberChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() register,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Register value) register,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterEvent {
  const factory _EmailChanged(final String emailStr) = _$_EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneNumberChangedCopyWith<$Res> {
  factory _$$_PhoneNumberChangedCopyWith(_$_PhoneNumberChanged value,
          $Res Function(_$_PhoneNumberChanged) then) =
      __$$_PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneStr});
}

/// @nodoc
class __$$_PhoneNumberChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_PhoneNumberChangedCopyWith<$Res> {
  __$$_PhoneNumberChangedCopyWithImpl(
      _$_PhoneNumberChanged _value, $Res Function(_$_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _$_PhoneNumberChanged));

  @override
  _$_PhoneNumberChanged get _value => super._value as _$_PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneStr = freezed,
  }) {
    return _then(_$_PhoneNumberChanged(
      phoneStr == freezed
          ? _value.phoneStr
          : phoneStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneStr);

  @override
  final String phoneStr;

  @override
  String toString() {
    return 'RegisterEvent.phoneNumberChanged(phoneStr: $phoneStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberChanged &&
            const DeepCollectionEquality().equals(other.phoneStr, phoneStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phoneStr));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      __$$_PhoneNumberChangedCopyWithImpl<_$_PhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneNumberChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() register,
  }) {
    return phoneNumberChanged(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
  }) {
    return phoneNumberChanged?.call(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Register value) register,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements RegisterEvent {
  const factory _PhoneNumberChanged(final String phoneStr) =
      _$_PhoneNumberChanged;

  String get phoneStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$_PasswordChanged));

  @override
  _$_PasswordChanged get _value => super._value as _$_PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_$_PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneNumberChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() register,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Register value) register,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterEvent {
  const factory _PasswordChanged(final String passwordStr) = _$_PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, (v) => _then(v as _$_Register));

  @override
  _$_Register get _value => super._value as _$_Register;
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register();

  @override
  String toString() {
    return 'RegisterEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Register);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullnameStr) fullnameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneStr) phoneNumberChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() register,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullnameStr)? fullnameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneStr)? phoneNumberChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullnameChanged value) fullnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullnameChanged value)? fullnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements RegisterEvent {
  const factory _Register() = _$_Register;
}
