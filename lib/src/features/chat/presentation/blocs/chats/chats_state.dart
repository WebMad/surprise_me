part of 'chats_bloc.dart';

@freezed
class ChatsState with _$ChatsState {
  const factory ChatsState.loading() = LoadingChats;

  const factory ChatsState.loaded({
    required List<User> users,
  }) = LoadedChats;

  const factory ChatsState.error() = ErrorChats;
}
