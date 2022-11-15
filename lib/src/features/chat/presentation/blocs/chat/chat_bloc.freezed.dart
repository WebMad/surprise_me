// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Message> messages) newMessages,
    required TResult Function(File? file, String message) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Message> messages)? newMessages,
    TResult? Function(File? file, String message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Message> messages)? newMessages,
    TResult Function(File? file, String message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewMessages value) newMessages,
    required TResult Function(SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewMessages value)? newMessages,
    TResult? Function(SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewMessages value)? newMessages,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewMessagesCopyWith<$Res> {
  factory _$$NewMessagesCopyWith(
          _$NewMessages value, $Res Function(_$NewMessages) then) =
      __$$NewMessagesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$NewMessagesCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$NewMessages>
    implements _$$NewMessagesCopyWith<$Res> {
  __$$NewMessagesCopyWithImpl(
      _$NewMessages _value, $Res Function(_$NewMessages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$NewMessages(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$NewMessages implements NewMessages {
  const _$NewMessages({required final List<Message> messages})
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatEvent.newMessages(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMessages &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMessagesCopyWith<_$NewMessages> get copyWith =>
      __$$NewMessagesCopyWithImpl<_$NewMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Message> messages) newMessages,
    required TResult Function(File? file, String message) sendMessage,
  }) {
    return newMessages(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Message> messages)? newMessages,
    TResult? Function(File? file, String message)? sendMessage,
  }) {
    return newMessages?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Message> messages)? newMessages,
    TResult Function(File? file, String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (newMessages != null) {
      return newMessages(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewMessages value) newMessages,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return newMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewMessages value)? newMessages,
    TResult? Function(SendMessage value)? sendMessage,
  }) {
    return newMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewMessages value)? newMessages,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (newMessages != null) {
      return newMessages(this);
    }
    return orElse();
  }
}

abstract class NewMessages implements ChatEvent {
  const factory NewMessages({required final List<Message> messages}) =
      _$NewMessages;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$NewMessagesCopyWith<_$NewMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageCopyWith<$Res> {
  factory _$$SendMessageCopyWith(
          _$SendMessage value, $Res Function(_$SendMessage) then) =
      __$$SendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({File? file, String message});
}

/// @nodoc
class __$$SendMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessage>
    implements _$$SendMessageCopyWith<$Res> {
  __$$SendMessageCopyWithImpl(
      _$SendMessage _value, $Res Function(_$SendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? message = null,
  }) {
    return _then(_$SendMessage(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessage implements SendMessage {
  const _$SendMessage({this.file, required this.message});

  @override
  final File? file;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(file: $file, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessage &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageCopyWith<_$SendMessage> get copyWith =>
      __$$SendMessageCopyWithImpl<_$SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Message> messages) newMessages,
    required TResult Function(File? file, String message) sendMessage,
  }) {
    return sendMessage(file, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Message> messages)? newMessages,
    TResult? Function(File? file, String message)? sendMessage,
  }) {
    return sendMessage?.call(file, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Message> messages)? newMessages,
    TResult Function(File? file, String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(file, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewMessages value) newMessages,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewMessages value)? newMessages,
    TResult? Function(SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewMessages value)? newMessages,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatEvent {
  const factory SendMessage({final File? file, required final String message}) =
      _$SendMessage;

  File? get file;
  String get message;
  @JsonKey(ignore: true)
  _$$SendMessageCopyWith<_$SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isSending, List<Message> messages) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isSending, List<Message> messages)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isSending, List<Message> messages)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMessages value) loading,
    required TResult Function(LoadedMessages value) loaded,
    required TResult Function(ErrorMessages value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMessages value)? loading,
    TResult? Function(LoadedMessages value)? loaded,
    TResult? Function(ErrorMessages value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMessages value)? loading,
    TResult Function(LoadedMessages value)? loaded,
    TResult Function(ErrorMessages value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingMessagesCopyWith<$Res> {
  factory _$$LoadingMessagesCopyWith(
          _$LoadingMessages value, $Res Function(_$LoadingMessages) then) =
      __$$LoadingMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMessagesCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingMessages>
    implements _$$LoadingMessagesCopyWith<$Res> {
  __$$LoadingMessagesCopyWithImpl(
      _$LoadingMessages _value, $Res Function(_$LoadingMessages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMessages implements LoadingMessages {
  const _$LoadingMessages();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isSending, List<Message> messages) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isSending, List<Message> messages)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isSending, List<Message> messages)? loaded,
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
    required TResult Function(LoadingMessages value) loading,
    required TResult Function(LoadedMessages value) loaded,
    required TResult Function(ErrorMessages value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMessages value)? loading,
    TResult? Function(LoadedMessages value)? loaded,
    TResult? Function(ErrorMessages value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMessages value)? loading,
    TResult Function(LoadedMessages value)? loaded,
    TResult Function(ErrorMessages value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMessages implements ChatState {
  const factory LoadingMessages() = _$LoadingMessages;
}

/// @nodoc
abstract class _$$LoadedMessagesCopyWith<$Res> {
  factory _$$LoadedMessagesCopyWith(
          _$LoadedMessages value, $Res Function(_$LoadedMessages) then) =
      __$$LoadedMessagesCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSending, List<Message> messages});
}

/// @nodoc
class __$$LoadedMessagesCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadedMessages>
    implements _$$LoadedMessagesCopyWith<$Res> {
  __$$LoadedMessagesCopyWithImpl(
      _$LoadedMessages _value, $Res Function(_$LoadedMessages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSending = null,
    Object? messages = null,
  }) {
    return _then(_$LoadedMessages(
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$LoadedMessages implements LoadedMessages {
  const _$LoadedMessages(
      {this.isSending = false, required final List<Message> messages})
      : _messages = messages;

  @override
  @JsonKey()
  final bool isSending;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.loaded(isSending: $isSending, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMessages &&
            (identical(other.isSending, isSending) ||
                other.isSending == isSending) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSending, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedMessagesCopyWith<_$LoadedMessages> get copyWith =>
      __$$LoadedMessagesCopyWithImpl<_$LoadedMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isSending, List<Message> messages) loaded,
    required TResult Function() error,
  }) {
    return loaded(isSending, messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isSending, List<Message> messages)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(isSending, messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isSending, List<Message> messages)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isSending, messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMessages value) loading,
    required TResult Function(LoadedMessages value) loaded,
    required TResult Function(ErrorMessages value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMessages value)? loading,
    TResult? Function(LoadedMessages value)? loaded,
    TResult? Function(ErrorMessages value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMessages value)? loading,
    TResult Function(LoadedMessages value)? loaded,
    TResult Function(ErrorMessages value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedMessages implements ChatState {
  const factory LoadedMessages(
      {final bool isSending,
      required final List<Message> messages}) = _$LoadedMessages;

  bool get isSending;
  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$LoadedMessagesCopyWith<_$LoadedMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMessagesCopyWith<$Res> {
  factory _$$ErrorMessagesCopyWith(
          _$ErrorMessages value, $Res Function(_$ErrorMessages) then) =
      __$$ErrorMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorMessagesCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorMessages>
    implements _$$ErrorMessagesCopyWith<$Res> {
  __$$ErrorMessagesCopyWithImpl(
      _$ErrorMessages _value, $Res Function(_$ErrorMessages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorMessages implements ErrorMessages {
  const _$ErrorMessages();

  @override
  String toString() {
    return 'ChatState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isSending, List<Message> messages) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isSending, List<Message> messages)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isSending, List<Message> messages)? loaded,
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
    required TResult Function(LoadingMessages value) loading,
    required TResult Function(LoadedMessages value) loaded,
    required TResult Function(ErrorMessages value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMessages value)? loading,
    TResult? Function(LoadedMessages value)? loaded,
    TResult? Function(ErrorMessages value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMessages value)? loading,
    TResult Function(LoadedMessages value)? loaded,
    TResult Function(ErrorMessages value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMessages implements ChatState {
  const factory ErrorMessages() = _$ErrorMessages;
}
