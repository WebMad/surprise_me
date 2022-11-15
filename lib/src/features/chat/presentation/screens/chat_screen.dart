import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mime/mime.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/blocs/chat/chat_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  File? pickedFile;

  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Чат")),
      body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          if (state is LoadedMessages) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Align(
                        alignment: (BlocProvider.of<AuthBloc>(context).state
                                        as Authenticated)
                                    .user
                                    .id ==
                                state.messages[index].senderId
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          margin: const EdgeInsets.only(
                            top: 5,
                            right: 10,
                            left: 10,
                          ),
                          child: Column(
                            children: [
                              Builder(
                                builder: (context) {
                                  if (state.messages[index].attachedFile !=
                                      null) {
                                    return FutureBuilder(
                                      future: FirebaseStorage.instance
                                          .ref()
                                          .child(state
                                              .messages[index].attachedFile!)
                                          .getDownloadURL(),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          return Text("*Картинка*");
                                        }
                                        return const SizedBox();
                                      },
                                    );
                                  }
                                  return const SizedBox();
                                },
                              ),
                              Text(state.messages[index].message),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: state.messages.length,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 100,
                        maxHeight: 100,
                      ),
                      child: pickedFile != null
                          ? Builder(
                              builder: (context) {
                                var mime = lookupMimeType(pickedFile!.path)!;
                                if (mime.startsWith("image")) {
                                  return Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.file(pickedFile!),
                                      const Align(
                                        alignment: Alignment.topCenter,
                                        child: Icon(
                                          Icons.image,
                                          size: 30,
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              pickedFile = null;
                                            });
                                          },
                                          icon: const Icon(
                                              Icons.highlight_remove_outlined))
                                    ],
                                  );
                                }

                                if (mime.startsWith("video")) {
                                  return Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.pink),
                                      const Align(
                                        alignment: Alignment.topCenter,
                                        child: Icon(
                                          Icons.video_call,
                                          size: 30,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            pickedFile = null;
                                          });
                                        },
                                        icon: const Icon(
                                            Icons.highlight_remove_outlined),
                                      ),
                                    ],
                                  );
                                }

                                return Text(mime);
                              },
                            )
                          : SizedBox(),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.attach_file),
                          onPressed: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result != null) {
                              var mime =
                                  lookupMimeType(result.files.single.path!)!;
                              if (mime.startsWith("image") ||
                                  mime.startsWith("video")) {
                                setState(() {
                                  pickedFile = File(result.files.single.path!);
                                });
                              }
                            }
                          },
                        ),
                        Expanded(
                            child:
                                TextFormField(controller: messageController)),
                        IconButton(
                          onPressed: () {
                            BlocProvider.of<ChatBloc>(context).add(SendMessage(
                                message: messageController.text,
                                file: pickedFile));
                            setState(() {
                              messageController.text = "";
                              pickedFile = null;
                            });
                          },
                          icon: const Icon(Icons.send),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
