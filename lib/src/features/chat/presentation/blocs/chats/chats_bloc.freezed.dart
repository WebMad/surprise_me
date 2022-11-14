// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadChats,
    required TResult Function(List<User> chats) newChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadChats,
    TResult? Function(List<User> chats)? newChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadChats,
    TResult Function(List<User> chats)? newChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChats value) loadChats,
    required TResult Function(NewChats value) newChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChats value)? loadChats,
    TResult? Function(NewChats value)? newChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChats value)? loadChats,
    TResult Function(NewChats value)? newChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEventCopyWith<$Res> {
  factory $ChatsEventCopyWith(
          ChatsEvent value, $Res Function(ChatsEvent) then) =
      _$ChatsEventCopyWithImpl<$Res, ChatsEvent>;
}

/// @nodoc
class _$ChatsEventCopyWithImpl<$Res, $Val extends ChatsEvent>
    implements $ChatsEventCopyWith<$Res> {
  _$ChatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadChatsCopyWith<$Res> {
  factory _$$LoadChatsCopyWith(
          _$LoadChats value, $Res Function(_$LoadChats) then) =
      __$$LoadChatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadChatsCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$LoadChats>
    implements _$$LoadChatsCopyWith<$Res> {
  __$$LoadChatsCopyWithImpl(
      _$LoadChats _value, $Res Function(_$LoadChats) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadChats implements LoadChats {
  const _$LoadChats();

  @override
  String toString() {
    return 'ChatsEvent.loadChats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadChats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadChats,
    required TResult Function(List<User> chats) newChats,
  }) {
    return loadChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadChats,
    TResult? Function(List<User> chats)? newChats,
  }) {
    return loadChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadChats,
    TResult Function(List<User> chats)? newChats,
    required TResult orElse(),
  }) {
    if (loadChats != null) {
      return loadChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChats value) loadChats,
    required TResult Function(NewChats value) newChats,
  }) {
    return loadChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChats value)? loadChats,
    TResult? Function(NewChats value)? newChats,
  }) {
    return loadChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChats value)? loadChats,
    TResult Function(NewChats value)? newChats,
    required TResult orElse(),
  }) {
    if (loadChats != null) {
      return loadChats(this);
    }
    return orElse();
  }
}

abstract class LoadChats implements ChatsEvent {
  const factory LoadChats() = _$LoadChats;
}

/// @nodoc
abstract class _$$NewChatsCopyWith<$Res> {
  factory _$$NewChatsCopyWith(
          _$NewChats value, $Res Function(_$NewChats) then) =
      __$$NewChatsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> chats});
}

/// @nodoc
class __$$NewChatsCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$NewChats>
    implements _$$NewChatsCopyWith<$Res> {
  __$$NewChatsCopyWithImpl(_$NewChats _value, $Res Function(_$NewChats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$NewChats(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$NewChats implements NewChats {
  const _$NewChats({required final List<User> chats}) : _chats = chats;

  final List<User> _chats;
  @override
  List<User> get chats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'ChatsEvent.newChats(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewChats &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewChatsCopyWith<_$NewChats> get copyWith =>
      __$$NewChatsCopyWithImpl<_$NewChats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadChats,
    required TResult Function(List<User> chats) newChats,
  }) {
    return newChats(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadChats,
    TResult? Function(List<User> chats)? newChats,
  }) {
    return newChats?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadChats,
    TResult Function(List<User> chats)? newChats,
    required TResult orElse(),
  }) {
    if (newChats != null) {
      return newChats(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChats value) loadChats,
    required TResult Function(NewChats value) newChats,
  }) {
    return newChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadChats value)? loadChats,
    TResult? Function(NewChats value)? newChats,
  }) {
    return newChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChats value)? loadChats,
    TResult Function(NewChats value)? newChats,
    required TResult orElse(),
  }) {
    if (newChats != null) {
      return newChats(this);
    }
    return orElse();
  }
}

abstract class NewChats implements ChatsEvent {
  const factory NewChats({required final List<User> chats}) = _$NewChats;

  List<User> get chats;
  @JsonKey(ignore: true)
  _$$NewChatsCopyWith<_$NewChats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChats value) loading,
    required TResult Function(LoadedChats value) loaded,
    required TResult Function(ErrorChats value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChats value)? loading,
    TResult? Function(LoadedChats value)? loaded,
    TResult? Function(ErrorChats value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChats value)? loading,
    TResult Function(LoadedChats value)? loaded,
    TResult Function(ErrorChats value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res, ChatsState>;
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res, $Val extends ChatsState>
    implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingChatsCopyWith<$Res> {
  factory _$$LoadingChatsCopyWith(
          _$LoadingChats value, $Res Function(_$LoadingChats) then) =
      __$$LoadingChatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingChatsCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$LoadingChats>
    implements _$$LoadingChatsCopyWith<$Res> {
  __$$LoadingChatsCopyWithImpl(
      _$LoadingChats _value, $Res Function(_$LoadingChats) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingChats implements LoadingChats {
  const _$LoadingChats();

  @override
  String toString() {
    return 'ChatsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingChats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function()? error,
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
    required TResult Function(LoadingChats value) loading,
    required TResult Function(LoadedChats value) loaded,
    required TResult Function(ErrorChats value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChats value)? loading,
    TResult? Function(LoadedChats value)? loaded,
    TResult? Function(ErrorChats value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChats value)? loading,
    TResult Function(LoadedChats value)? loaded,
    TResult Function(ErrorChats value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingChats implements ChatsState {
  const factory LoadingChats() = _$LoadingChats;
}

/// @nodoc
abstract class _$$LoadedChatsCopyWith<$Res> {
  factory _$$LoadedChatsCopyWith(
          _$LoadedChats value, $Res Function(_$LoadedChats) then) =
      __$$LoadedChatsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$LoadedChatsCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$LoadedChats>
    implements _$$LoadedChatsCopyWith<$Res> {
  __$$LoadedChatsCopyWithImpl(
      _$LoadedChats _value, $Res Function(_$LoadedChats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$LoadedChats(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$LoadedChats implements LoadedChats {
  const _$LoadedChats({required final List<User> users}) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'ChatsState.loaded(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedChats &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedChatsCopyWith<_$LoadedChats> get copyWith =>
      __$$LoadedChatsCopyWithImpl<_$LoadedChats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function() error,
  }) {
    return loaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChats value) loading,
    required TResult Function(LoadedChats value) loaded,
    required TResult Function(ErrorChats value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChats value)? loading,
    TResult? Function(LoadedChats value)? loaded,
    TResult? Function(ErrorChats value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChats value)? loading,
    TResult Function(LoadedChats value)? loaded,
    TResult Function(ErrorChats value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedChats implements ChatsState {
  const factory LoadedChats({required final List<User> users}) = _$LoadedChats;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$LoadedChatsCopyWith<_$LoadedChats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorChatsCopyWith<$Res> {
  factory _$$ErrorChatsCopyWith(
          _$ErrorChats value, $Res Function(_$ErrorChats) then) =
      __$$ErrorChatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorChatsCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$ErrorChats>
    implements _$$ErrorChatsCopyWith<$Res> {
  __$$ErrorChatsCopyWithImpl(
      _$ErrorChats _value, $Res Function(_$ErrorChats) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorChats implements ErrorChats {
  const _$ErrorChats();

  @override
  String toString() {
    return 'ChatsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorChats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChats value) loading,
    required TResult Function(LoadedChats value) loaded,
    required TResult Function(ErrorChats value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingChats value)? loading,
    TResult? Function(LoadedChats value)? loaded,
    TResult? Function(ErrorChats value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChats value)? loading,
    TResult Function(LoadedChats value)? loaded,
    TResult Function(ErrorChats value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorChats implements ChatsState {
  const factory ErrorChats() = _$ErrorChats;
}
