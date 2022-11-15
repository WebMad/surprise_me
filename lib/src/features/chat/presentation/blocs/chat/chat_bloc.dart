import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surprise_me/src/features/chat/entities/message.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final String receiverId;
  final String senderId;

  ChatBloc(this.receiverId, this.senderId) : super(const ChatState.loading()) {
    on<NewMessages>(_onLoadedMessages);
    on<SendMessage>(_onSendMessage);

    FirebaseFirestore.instance
        .collection("messages")
        .where('user_ids', whereIn: [
          [receiverId, senderId],
          [senderId, receiverId],
        ])
        .orderBy("sent_at", descending: true)
        .limit(10)
        .snapshots()
        .listen((event) {
          add(ChatEvent.newMessages(
              messages: event.docs.map((e) {
            return Message.fromJson(e.data());
          }).toList()));
        });
  }

  _onLoadedMessages(NewMessages event, Emitter emit) {
    emit(ChatState.loaded(messages: event.messages));
  }

  _onSendMessage(SendMessage event, Emitter emit) async {
    emit((state as LoadedMessages).copyWith(isSending: true));

    String? fileName;
    if (event.file != null) {
      var r = Random();
      fileName =
          "${String.fromCharCodes(List.generate(33, (index) => r.nextInt(33) + 89))}.${event.file!.path.split(".").last}";
      await FirebaseStorage.instance.ref(fileName).putFile(event.file!);
    }

    await FirebaseFirestore.instance.collection("messages").add({
      "sent_at": DateTime.now(),
      "user_ids": [
        senderId,
        receiverId,
      ],
      "sender_id": senderId,
      "message": event.message,
      "attached_file": fileName,
    });

    emit((state as LoadedMessages).copyWith(isSending: false));
  }
}
