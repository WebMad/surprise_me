import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surprise_me/src/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:surprise_me/src/features/chat/entities/message.dart';
import 'package:surprise_me/src/features/chat/presentation/blocs/chat/chat_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/custom_image.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/custom_video_player.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/video.dart';

class MessageElement extends StatelessWidget {
  final Message message;
  final List<String> files;

  const MessageElement({
    Key? key,
    required this.message,
    required this.files,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
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
              if (message.attachedFile != null &&
                  message.attachedFileType != null) {
                var userId =
                    (BlocProvider.of<AuthBloc>(context).state as Authenticated)
                        .user
                        .id;

                var file = files.firstWhere(
                  (element) =>
                      Uri.parse(element).pathSegments.last ==
                      message.attachedFile,
                );
                if (message.attachedFileType == 'image') {
                  if (userId == message.senderId || message.type == "decline") {
                    return Image.network(file, width: 200);
                  }
                  return CustomImage(
                    onClick: () {
                      Navigator.of(context)
                          .pushNamed('/view-image', arguments: {
                        "url": file,
                        "type": "image",
                      }).then((value) {
                        if (value is File) {
                          BlocProvider.of<ChatBloc>(context).add(
                            ChatEvent.sendReaction(
                              reaction: value,
                              file: message.attachedFile!,
                              fileType: message.attachedFileType!,
                            ),
                          );
                        }
                        if (value == false) {
                          BlocProvider.of<ChatBloc>(context).add(
                            ChatEvent.sendDecline(
                              file: message.attachedFile!,
                              fileType: message.attachedFileType!,
                            ),
                          );
                        }
                      });
                    },
                  );
                }

                return Video(
                  onClick: userId != message.senderId
                      ? () {
                          Navigator.of(context)
                              .pushNamed('/view-image', arguments: {
                            "url": file,
                            "type": "video",
                          }).then((value) {
                            if (value is File) {
                              BlocProvider.of<ChatBloc>(context).add(
                                ChatEvent.sendReaction(
                                  reaction: value,
                                  file: message.attachedFile!,
                                  fileType: message.attachedFileType!,
                                ),
                              );
                            }
                            if (value == false) {
                              BlocProvider.of<ChatBloc>(context).add(
                                ChatEvent.sendDecline(
                                  file: message.attachedFile!,
                                  fileType: message.attachedFileType!,
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
                                    title: const Text("Видео"),
                                  ),
                                  body: CustomVideoPlayer(url: file),
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
          Text(message.message),
        ],
      ),
    );
  }
}
