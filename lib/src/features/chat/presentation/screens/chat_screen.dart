import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mime/mime.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/blocs/chat/chat_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/custom_image.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/custom_video_player.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/video.dart';
import 'package:video_player/video_player.dart';

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
                      var message = state.messages[index];
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
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      if (message.attachedFile != null &&
                                          message.attachedFileType != null) {
                                        var userId =
                                            (BlocProvider.of<AuthBloc>(context)
                                                    .state as Authenticated)
                                                .user
                                                .id;
                                        var file = state.files.firstWhere(
                                          (element) =>
                                              Uri.parse(element)
                                                  .pathSegments
                                                  .last ==
                                              message.attachedFile,
                                        );
                                        if (message.attachedFileType ==
                                            'image') {
                                          if (userId == message.senderId ||
                                              message.type == "reaction") {
                                            return Image.network(file,
                                                width: 200);
                                          }
                                          return CustomImage(
                                            onClick: () {
                                              Navigator.of(context).pushNamed(
                                                  '/view-image',
                                                  arguments: {
                                                    "url": file,
                                                    "type": "image",
                                                  }).then((value) {
                                                if (value is File) {
                                                  BlocProvider.of<ChatBloc>(
                                                          context)
                                                      .add(
                                                    ChatEvent.sendReaction(
                                                      reaction: value,
                                                      file:
                                                          message.attachedFile!,
                                                      fileType: message
                                                          .attachedFileType!,
                                                    ),
                                                  );
                                                }
                                              });
                                            },
                                          );
                                        }

                                        if (message.type == "reaction") {
                                          return Video(
                                            onClick: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return Scaffold(
                                                      appBar: AppBar(
                                                        title:
                                                            const Text("Видео"),
                                                      ),
                                                      body: CustomVideoPlayer(
                                                          url: file),
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        }

                                        return Video(
                                          onClick: userId != message.senderId
                                              ? () {
                                                  Navigator.of(context)
                                                      .pushNamed('/view-image',
                                                          arguments: {
                                                        "url": file,
                                                        "type": "video",
                                                      }).then((value) {
                                                    if (value is File) {
                                                      BlocProvider.of<ChatBloc>(
                                                              context)
                                                          .add(
                                                        ChatEvent.sendReaction(
                                                          reaction: value,
                                                          file: message
                                                              .attachedFile!,
                                                          fileType: message
                                                              .attachedFileType!,
                                                        ),
                                                      );
                                                    }
                                                  });
                                                  print("Gotcha video!");
                                                }
                                              : () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        return Scaffold(
                                                          appBar: AppBar(
                                                            title: const Text(
                                                                "Видео"),
                                                          ),
                                                          body:
                                                              CustomVideoPlayer(
                                                                  url: file),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                        );
                                      }
                                      return const SizedBox();
                                    },
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (message.reaction != null) {
                                        var file = state.files.firstWhere(
                                          (element) =>
                                              Uri.parse(element)
                                                  .pathSegments
                                                  .last ==
                                              message.reaction,
                                        );

                                        return Video(onClick: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) {
                                              return Scaffold(
                                                appBar: AppBar(
                                                  title: const Text("Реакция"),
                                                ),
                                                body: CustomVideoPlayer(
                                                  url: file,
                                                ),
                                              );
                                            },
                                          ));
                                        });
                                      }

                                      return const SizedBox();
                                    },
                                  ),
                                ],
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
                          : const SizedBox(),
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
