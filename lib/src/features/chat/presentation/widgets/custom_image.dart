import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final Function onClick;

  const CustomImage({Key? key, required this.onClick}) : super(key: key);

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
            color: Colors.orange,
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Icon(
              Icons.image,
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
