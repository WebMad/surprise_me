import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surprise_me/src/features/auth/entities/user.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Chat({
    required String id,
    required List<User> members,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
