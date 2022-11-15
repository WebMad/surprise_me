// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get message => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  List<String> get userIds => throw _privateConstructorUsedError;
  String? get attachedFile => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestamp2DateTime)
  DateTime get sentAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String message,
      String senderId,
      List<String> userIds,
      String? attachedFile,
      @JsonKey(fromJson: timestamp2DateTime) DateTime sentAt});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? senderId = null,
    Object? userIds = null,
    Object? attachedFile = freezed,
    Object? sentAt = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attachedFile: freezed == attachedFile
          ? _value.attachedFile
          : attachedFile // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      String senderId,
      List<String> userIds,
      String? attachedFile,
      @JsonKey(fromJson: timestamp2DateTime) DateTime sentAt});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? senderId = null,
    Object? userIds = null,
    Object? attachedFile = freezed,
    Object? sentAt = null,
  }) {
    return _then(_$_Message(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attachedFile: freezed == attachedFile
          ? _value.attachedFile
          : attachedFile // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Message implements _Message {
  const _$_Message(
      {required this.message,
      required this.senderId,
      required final List<String> userIds,
      this.attachedFile,
      @JsonKey(fromJson: timestamp2DateTime) required this.sentAt})
      : _userIds = userIds;

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final String message;
  @override
  final String senderId;
  final List<String> _userIds;
  @override
  List<String> get userIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  final String? attachedFile;
  @override
  @JsonKey(fromJson: timestamp2DateTime)
  final DateTime sentAt;

  @override
  String toString() {
    return 'Message(message: $message, senderId: $senderId, userIds: $userIds, attachedFile: $attachedFile, sentAt: $sentAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.attachedFile, attachedFile) ||
                other.attachedFile == attachedFile) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, senderId,
      const DeepCollectionEquality().hash(_userIds), attachedFile, sentAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final String message,
      required final String senderId,
      required final List<String> userIds,
      final String? attachedFile,
      @JsonKey(fromJson: timestamp2DateTime)
          required final DateTime sentAt}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String get message;
  @override
  String get senderId;
  @override
  List<String> get userIds;
  @override
  String? get attachedFile;
  @override
  @JsonKey(fromJson: timestamp2DateTime)
  DateTime get sentAt;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
