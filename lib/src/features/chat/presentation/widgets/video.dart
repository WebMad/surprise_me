import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  final Function onClick;

  const Video({Key? key, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
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
              onClick();
            },
            icon: const Icon(Icons.remove_red_eye),
          ),
        ],
      ),
    );
  }
}
