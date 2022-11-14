// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendLogin value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendLogin value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendLogin value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$SendLoginCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$$SendLoginCopyWith(
          _$SendLogin value, $Res Function(_$SendLogin) then) =
      __$$SendLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SendLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SendLogin>
    implements _$$SendLoginCopyWith<$Res> {
  __$$SendLoginCopyWithImpl(
      _$SendLogin _value, $Res Function(_$SendLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SendLogin(
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

class _$SendLogin implements SendLogin {
  const _$SendLogin({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.send(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendLogin &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendLoginCopyWith<_$SendLogin> get copyWith =>
      __$$SendLoginCopyWithImpl<_$SendLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) send,
  }) {
    return send(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? send,
  }) {
    return send?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendLogin value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendLogin value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendLogin value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class SendLogin implements LoginEvent {
  const factory SendLogin(
      {required final String email,
      required final String password}) = _$SendLogin;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SendLoginCopyWith<_$SendLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(User user) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(User user)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(User user)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialLoginCopyWith<$Res> {
  factory _$$InitialLoginCopyWith(
          _$InitialLogin value, $Res Function(_$InitialLogin) then) =
      __$$InitialLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialLoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialLogin>
    implements _$$InitialLoginCopyWith<$Res> {
  __$$InitialLoginCopyWithImpl(
      _$InitialLogin _value, $Res Function(_$InitialLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialLogin implements InitialLogin {
  const _$InitialLogin();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(User user) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(User user)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(User user)? success,
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
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLogin implements LoginState {
  const factory InitialLogin() = _$InitialLogin;
}

/// @nodoc
abstract class _$$LoadingLoginCopyWith<$Res> {
  factory _$$LoadingLoginCopyWith(
          _$LoadingLogin value, $Res Function(_$LoadingLogin) then) =
      __$$LoadingLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingLogin>
    implements _$$LoadingLoginCopyWith<$Res> {
  __$$LoadingLoginCopyWithImpl(
      _$LoadingLogin _value, $Res Function(_$LoadingLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLogin implements LoadingLogin {
  const _$LoadingLogin();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(User user) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(User user)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(User user)? success,
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
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLogin implements LoginState {
  const factory LoadingLogin() = _$LoadingLogin;
}

/// @nodoc
abstract class _$$ErrorLoginCopyWith<$Res> {
  factory _$$ErrorLoginCopyWith(
          _$ErrorLogin value, $Res Function(_$ErrorLogin) then) =
      __$$ErrorLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ErrorLoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorLogin>
    implements _$$ErrorLoginCopyWith<$Res> {
  __$$ErrorLoginCopyWithImpl(
      _$ErrorLogin _value, $Res Function(_$ErrorLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ErrorLogin(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLogin implements ErrorLogin {
  const _$ErrorLogin({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'LoginState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLogin &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLoginCopyWith<_$ErrorLogin> get copyWith =>
      __$$ErrorLoginCopyWithImpl<_$ErrorLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(User user) success,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(User user)? success,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(User user)? success,
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
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLogin implements LoginState {
  const factory ErrorLogin({required final String msg}) = _$ErrorLogin;

  String get msg;
  @JsonKey(ignore: true)
  _$$ErrorLoginCopyWith<_$ErrorLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessLoginCopyWith<$Res> {
  factory _$$SuccessLoginCopyWith(
          _$SuccessLogin value, $Res Function(_$SuccessLogin) then) =
      __$$SuccessLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SuccessLoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessLogin>
    implements _$$SuccessLoginCopyWith<$Res> {
  __$$SuccessLoginCopyWithImpl(
      _$SuccessLogin _value, $Res Function(_$SuccessLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessLogin(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SuccessLogin implements SuccessLogin {
  const _$SuccessLogin({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'LoginState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLogin &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoginCopyWith<_$SuccessLogin> get copyWith =>
      __$$SuccessLoginCopyWithImpl<_$SuccessLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(User user) success,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(User user)? success,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(User user)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessLogin implements LoginState {
  const factory SuccessLogin({required final User user}) = _$SuccessLogin;

  User get user;
  @JsonKey(ignore: true)
  _$$SuccessLoginCopyWith<_$SuccessLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
