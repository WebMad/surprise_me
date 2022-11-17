import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mime/mime.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/blocs/chat/chat_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/message_element.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/reaction_message_element.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  File? pickedFile;

  final messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(BlocProvider.of<ChatBloc>(context).receiver.name)),
      body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          if (state is LoadedMessages) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemBuilder: (context, index) {
                      var message = state.messages[index];
                      return Align(
                        alignment: (BlocProvider.of<AuthBloc>(context).state
                                        as Authenticated)
                                    .user
                                    .id ==
                                state.messages[index].senderId
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: message.type == "reaction"
                            ? ReactionMessageElement(
                                message: message,
                                files: state.files,
                              )
                            : MessageElement(
                                message: message,
                                files: state.files,
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
                          : const SizedBox(),
                    ),
                    const SizedBox(height: 10),
                    state.isSending
                        ? Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Отправка сообщения"),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: 10,
                                  height: 10,
                                  child:
                                      CircularProgressIndicator(strokeWidth: 2),
                                ),
                              ],
                            ),
                          )
                        : Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.attach_file),
                                onPressed: () async {
                                  FilePickerResult? result =
                                      await FilePicker.platform.pickFiles();

                                  if (result != null) {
                                    var mime = lookupMimeType(
                                        result.files.single.path!)!;
                                    if (mime.startsWith("image") ||
                                        mime.startsWith("video")) {
                                      setState(() {
                                        pickedFile =
                                            File(result.files.single.path!);
                                      });
                                    }
                                  }
                                },
                              ),
                              Expanded(
                                  child: TextFormField(
                                controller: messageController,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 0),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              )),
                              IconButton(
                                onPressed: () {
                                  BlocProvider.of<ChatBloc>(context).add(
                                      SendMessage(
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

          if (state is LoadingMessages) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
