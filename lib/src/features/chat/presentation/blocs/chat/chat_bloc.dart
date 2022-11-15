import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mime/mime.dart';
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
    on<SendReaction>(_onSendReaction);

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

  _onLoadedMessages(NewMessages event, Emitter emit) async {
    List<String> files = [];
    for (var message in event.messages) {
      if (message.attachedFile != null) {
        var file = FirebaseStorage.instance.ref(message.attachedFile);
        files.add((await file.getDownloadURL()));
      }
      if (message.reaction != null) {
        var file = FirebaseStorage.instance.ref(message.reaction);
        files.add((await file.getDownloadURL()));
      }
    }

    emit(ChatState.loaded(messages: event.messages, files: files));
  }

  _onSendMessage(SendMessage event, Emitter emit) async {
    emit((state as LoadedMessages).copyWith(isSending: true));

    String? fileName;
    String? fileType;
    if (event.file != null) {
      var r = Random();
      fileName =
          "${String.fromCharCodes(List.generate(33, (index) => r.nextInt(33) + 89))}.${event.file!.path.split(".").last}";
      await FirebaseStorage.instance.ref(fileName).putFile(event.file!);
      fileType = lookupMimeType(event.file!.path)!.startsWith('image')
          ? 'image'
          : 'video';
    }

    await FirebaseFirestore.instance.collection("messages").add({
      "sent_at": DateTime.now(),
      "user_ids": [
        senderId,
        receiverId,
      ],
      "attached_file_type": fileType,
      "sender_id": senderId,
      "message": event.message,
      "attached_file": fileName,
    });

    emit((state as LoadedMessages).copyWith(isSending: false));
  }

  _onSendReaction(SendReaction event, Emitter emit) async {
    emit((state as LoadedMessages).copyWith(isSending: true));

    var r = Random();
    var fileName =
        "${String.fromCharCodes(List.generate(33, (index) => r.nextInt(33) + 89))}.${event.reaction.path.split(".").last}";
    await FirebaseStorage.instance.ref(fileName).putFile(event.reaction);

    await FirebaseFirestore.instance.collection("messages").add({
      "sent_at": DateTime.now(),
      "user_ids": [
        senderId,
        receiverId,
      ],
      "sender_id": senderId,
      "type": "reaction",
      "message": "Реакция на материал",
      "attached_file_type": event.fileType,
      "attached_file": event.file,
      "reaction": fileName,
    });

    emit((state as LoadedMessages).copyWith(isSending: false));
  }
}
