import 'package:flutter/material.dart';
import 'package:surprise_me/src/features/chat/entities/message.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/custom_video_player.dart';
import 'package:surprise_me/src/features/chat/presentation/widgets/video.dart';

class ReactionMessageElement extends StatelessWidget {
  final Message message;
  final List<String> files;

  const ReactionMessageElement({
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Новая реакция!",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Материал: "),
              Builder(
                builder: (context) {
                  if (message.attachedFile != null &&
                      message.attachedFileType != null) {
                    var file = files.firstWhere(
                      (element) =>
                          Uri.parse(element).pathSegments.last ==
                          message.attachedFile,
                    );
                    if (message.attachedFileType == 'image') {
                      return Image.network(file, width: 200);
                    }

                    return Video(
                      onClick: () {
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
              const SizedBox(height: 10),
              const Text("Реакция: "),
              Builder(
                builder: (context) {
                  var file = files.firstWhere(
                    (element) =>
                        Uri.parse(element).pathSegments.last ==
                        message.reaction,
                  );

                  return Video(onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
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
                },
              ),
            ],
          ),
          Text(message.message),
        ],
      ),
    );
  }
}
