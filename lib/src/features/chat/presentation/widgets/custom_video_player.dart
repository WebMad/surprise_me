import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  final String url;

  const CustomVideoPlayer({Key? key, required this.url}) : super(key: key);

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        setState(() {});
      }).then((value) => _controller.play());
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}
