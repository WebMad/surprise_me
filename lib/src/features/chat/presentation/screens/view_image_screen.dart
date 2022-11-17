import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/blocs/view_image/view_image_bloc.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/custom_video_player.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/reaction_recoder.dart';

class ViewImageScreen extends StatefulWidget {
  final String url;
  final String type;

  const ViewImageScreen({
    Key? key,
    required this.url,
    required this.type,
  }) : super(key: key);

  @override
  State<ViewImageScreen> createState() => _ViewImageScreenState();
}

class _ViewImageScreenState extends State<ViewImageScreen> {
  final reactionRecorderKey = GlobalKey<ReactionRecorderState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ViewImageBloc, ViewImageState>(
          builder: (context, state) {
            if (state is InitialViewImage) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                        "Для того, чтобы просмотреть ресурс вы должны разрешить использование камеры. Это используется для запечатления вашей реакции и порадует собеседника ^_^",
                        textAlign: TextAlign.center),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<ViewImageBloc>(context)
                            .add(const ViewImageEvent.accept());
                      },
                      child: const Text("Включить камеру"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text("Отклонить"),
                    ),
                  ],
                ),
              );
            }

            if (state is AcceptedViewImage) {
              return FutureBuilder(
                  future: availableCameras(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          FutureBuilder(
                              future: Future.delayed(
                                  const Duration(seconds: 1), () => 1),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  if (widget.type == 'image') {
                                    return Image.network(widget.url);
                                  }
                                  return CustomVideoPlayer(url: widget.url);
                                }
                                return const Center(child: Text("Загрузка..."));
                              }),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: SizedBox(
                              height: 200,
                              width: 150,
                              child: ReactionRecorder(
                                key: reactionRecorderKey,
                                onCameraStart: () {
                                  reactionRecorderKey
                                      .currentState?.cameraController
                                      .startVideoRecording();
                                },
                                cameras: snapshot.data!,
                                onDenied: () {
                                  BlocProvider.of<ViewImageBloc>(context)
                                      .add(const ViewImageEvent.denied());
                                },
                              ),
                            ),
                          ),
                          Positioned(
                              left: 10,
                              bottom: 10,
                              child: ElevatedButton(
                                child: const Text("Вернуться в чат"),
                                onPressed: () async {
                                  var xFile = await reactionRecorderKey
                                      .currentState?.cameraController
                                      .stopVideoRecording();
                                  var file = File(xFile!.path);

                                  Navigator.of(context).pop(file);
                                },
                              )),
                        ],
                      );
                    }
                    return const Center(child: Text("Загрузка..."));
                  });
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
