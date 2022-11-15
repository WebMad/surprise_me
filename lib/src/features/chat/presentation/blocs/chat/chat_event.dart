part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.newMessages({
    required List<Message> messages,
  }) = NewMessages;

  const factory ChatEvent.sendMessage({
    File? file,
    required String message,
  }) = SendMessage;
}
