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
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendRegister value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendRegister value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendRegister value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendRegisterCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$SendRegisterCopyWith(
          _$SendRegister value, $Res Function(_$SendRegister) then) =
      __$$SendRegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$SendRegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SendRegister>
    implements _$$SendRegisterCopyWith<$Res> {
  __$$SendRegisterCopyWithImpl(
      _$SendRegister _value, $Res Function(_$SendRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SendRegister(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendRegister implements SendRegister {
  const _$SendRegister(
      {required this.name, required this.email, required this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.send(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendRegister &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendRegisterCopyWith<_$SendRegister> get copyWith =>
      __$$SendRegisterCopyWithImpl<_$SendRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password) send,
  }) {
    return send(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)? send,
  }) {
    return send?.call(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendRegister value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendRegister value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendRegister value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class SendRegister implements RegisterEvent {
  const factory SendRegister(
      {required final String name,
      required final String email,
      required final String password}) = _$SendRegister;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SendRegisterCopyWith<_$SendRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegister value) initial,
    required TResult Function(LoadingRegister value) loading,
    required TResult Function(SuccessRegister value) success,
    required TResult Function(ErrorRegister value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegister value)? initial,
    TResult? Function(LoadingRegister value)? loading,
    TResult? Function(SuccessRegister value)? success,
    TResult? Function(ErrorRegister value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegister value)? initial,
    TResult Function(LoadingRegister value)? loading,
    TResult Function(SuccessRegister value)? success,
    TResult Function(ErrorRegister value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialRegisterCopyWith<$Res> {
  factory _$$InitialRegisterCopyWith(
          _$InitialRegister value, $Res Function(_$InitialRegister) then) =
      __$$InitialRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialRegisterCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialRegister>
    implements _$$InitialRegisterCopyWith<$Res> {
  __$$InitialRegisterCopyWithImpl(
      _$InitialRegister _value, $Res Function(_$InitialRegister) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialRegister implements InitialRegister {
  const _$InitialRegister();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
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
    required TResult Function(InitialRegister value) initial,
    required TResult Function(LoadingRegister value) loading,
    required TResult Function(SuccessRegister value) success,
    required TResult Function(ErrorRegister value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegister value)? initial,
    TResult? Function(LoadingRegister value)? loading,
    TResult? Function(SuccessRegister value)? success,
    TResult? Function(ErrorRegister value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegister value)? initial,
    TResult Function(LoadingRegister value)? loading,
    TResult Function(SuccessRegister value)? success,
    TResult Function(ErrorRegister value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialRegister implements RegisterState {
  const factory InitialRegister() = _$InitialRegister;
}

/// @nodoc
abstract class _$$LoadingRegisterCopyWith<$Res> {
  factory _$$LoadingRegisterCopyWith(
          _$LoadingRegister value, $Res Function(_$LoadingRegister) then) =
      __$$LoadingRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingRegisterCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$LoadingRegister>
    implements _$$LoadingRegisterCopyWith<$Res> {
  __$$LoadingRegisterCopyWithImpl(
      _$LoadingRegister _value, $Res Function(_$LoadingRegister) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingRegister implements LoadingRegister {
  const _$LoadingRegister();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
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
    required TResult Function(InitialRegister value) initial,
    required TResult Function(LoadingRegister value) loading,
    required TResult Function(SuccessRegister value) success,
    required TResult Function(ErrorRegister value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegister value)? initial,
    TResult? Function(LoadingRegister value)? loading,
    TResult? Function(SuccessRegister value)? success,
    TResult? Function(ErrorRegister value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegister value)? initial,
    TResult Function(LoadingRegister value)? loading,
    TResult Function(SuccessRegister value)? success,
    TResult Function(ErrorRegister value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingRegister implements RegisterState {
  const factory LoadingRegister() = _$LoadingRegister;
}

/// @nodoc
abstract class _$$SuccessRegisterCopyWith<$Res> {
  factory _$$SuccessRegisterCopyWith(
          _$SuccessRegister value, $Res Function(_$SuccessRegister) then) =
      __$$SuccessRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessRegisterCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$SuccessRegister>
    implements _$$SuccessRegisterCopyWith<$Res> {
  __$$SuccessRegisterCopyWithImpl(
      _$SuccessRegister _value, $Res Function(_$SuccessRegister) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessRegister implements SuccessRegister {
  const _$SuccessRegister();

  @override
  String toString() {
    return 'RegisterState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegister value) initial,
    required TResult Function(LoadingRegister value) loading,
    required TResult Function(SuccessRegister value) success,
    required TResult Function(ErrorRegister value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegister value)? initial,
    TResult? Function(LoadingRegister value)? loading,
    TResult? Function(SuccessRegister value)? success,
    TResult? Function(ErrorRegister value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegister value)? initial,
    TResult Function(LoadingRegister value)? loading,
    TResult Function(SuccessRegister value)? success,
    TResult Function(ErrorRegister value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessRegister implements RegisterState {
  const factory SuccessRegister() = _$SuccessRegister;
}

/// @nodoc
abstract class _$$ErrorRegisterCopyWith<$Res> {
  factory _$$ErrorRegisterCopyWith(
          _$ErrorRegister value, $Res Function(_$ErrorRegister) then) =
      __$$ErrorRegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ErrorRegisterCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$ErrorRegister>
    implements _$$ErrorRegisterCopyWith<$Res> {
  __$$ErrorRegisterCopyWithImpl(
      _$ErrorRegister _value, $Res Function(_$ErrorRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ErrorRegister(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorRegister implements ErrorRegister {
  const _$ErrorRegister({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'RegisterState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorRegister &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorRegisterCopyWith<_$ErrorRegister> get copyWith =>
      __$$ErrorRegisterCopyWithImpl<_$ErrorRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegister value) initial,
    required TResult Function(LoadingRegister value) loading,
    required TResult Function(SuccessRegister value) success,
    required TResult Function(ErrorRegister value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegister value)? initial,
    TResult? Function(LoadingRegister value)? loading,
    TResult? Function(SuccessRegister value)? success,
    TResult? Function(ErrorRegister value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegister value)? initial,
    TResult Function(LoadingRegister value)? loading,
    TResult Function(SuccessRegister value)? success,
    TResult Function(ErrorRegister value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorRegister implements RegisterState {
  const factory ErrorRegister({required final String msg}) = _$ErrorRegister;

  String get msg;
  @JsonKey(ignore: true)
  _$$ErrorRegisterCopyWith<_$ErrorRegister> get copyWith =>
      throw _privateConstructorUsedError;
}
