part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loading() = LoadingMessages;

  const factory ChatState.loaded({
    @Default(false) bool isSending,
    required List<Message> messages,
    @Default([]) List<String> files,
  }) = LoadedMessages;

  const factory ChatState.error() = ErrorMessages;
}
