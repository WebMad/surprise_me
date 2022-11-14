import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

timestamp2DateTime(Timestamp timestamp) {
  return timestamp.toDate();
}

@freezed
class Message with _$Message {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Message({
    required String message,
    required String senderId,
    required List<String> userIds,
    @JsonKey(fromJson: timestamp2DateTime) required DateTime sentAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
