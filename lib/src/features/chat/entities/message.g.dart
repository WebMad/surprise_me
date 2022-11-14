// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      message: json['message'] as String,
      senderId: json['sender_id'] as String,
      userIds:
          (json['user_ids'] as List<dynamic>).map((e) => e as String).toList(),
      sentAt: timestamp2DateTime(json['sent_at'] as Timestamp),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sender_id': instance.senderId,
      'user_ids': instance.userIds,
      'sent_at': instance.sentAt.toIso8601String(),
    };
