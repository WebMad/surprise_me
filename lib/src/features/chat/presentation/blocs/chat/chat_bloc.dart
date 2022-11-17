import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mime/mime.dart';
import 'package:surprise_me/src/features/auth/entities/user.dart';
import 'package:surprise_me/src/features/chat/entities/message.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final User receiver;
  final User sender;
  late final StreamSubscription streamSubscription;

  ChatBloc(this.receiver, this.sender) : super(const ChatState.loading()) {
    on<NewMessages>(_onLoadedMessages);
    on<SendMessage>(_onSendMessage);
    on<SendReaction>(_onSendReaction);
    on<SendDecline>(_onSendDecline);

    streamSubscription = FirebaseFirestore.instance
        .collection("messages")
        .where('user_ids', whereIn: [
          [receiver.id, sender.id],
          [sender.id, receiver.id],
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

  @override
  Future<void> close() async {
    await streamSubscription.cancel();
    await super.close();
  }

  _onSendDecline(SendDecline event, Emitter emit) async {
    try {
      emit((state as LoadedMessages).copyWith(isSending: true));
      await FirebaseFirestore.instance.collection("messages").add({
        "sent_at": DateTime.now(),
        "user_ids": [
          sender.id,
          receiver.id,
        ],
        "type": "decline",
        "sender_id": sender.id,
        "message":
            "Пользователь отказался включать камеру для этого маетариала(",
        "attached_file_type": event.fileType,
        "attached_file": event.file,
      });
    } catch (_) {}
    emit((state as LoadedMessages).copyWith(isSending: false));
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
        sender.id,
        receiver.id,
      ],
      "attached_file_type": fileType,
      "sender_id": sender.id,
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
        sender.id,
        receiver.id,
      ],
      "sender_id": sender.id,
      "type": "reaction",
      "message": "",
      "attached_file_type": event.fileType,
      "attached_file": event.file,
      "reaction": fileName,
    });

    emit((state as LoadedMessages).copyWith(isSending: false));
  }
}
