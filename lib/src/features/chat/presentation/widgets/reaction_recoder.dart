import 'package:camera/camera.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class ReactionRecorder extends StatefulWidget {
  final List<CameraDescription> cameras;
  final Function onDenied;
  final Function onCameraStart;

  const ReactionRecorder(
      {Key? key,
      required this.cameras,
      required this.onDenied,
      required this.onCameraStart})
      : super(key: key);

  @override
  State<ReactionRecorder> createState() => ReactionRecorderState();
}

class ReactionRecorderState extends State<ReactionRecorder> {
  late CameraController cameraController;

  @override
  void initState() {
    super.initState();

    for (var camera in widget.cameras) {
      print(camera.lensDirection);
    }

    cameraController = CameraController(
        widget.cameras.firstWhereOrNull((element) =>
                element.lensDirection == CameraLensDirection.front) ??
            widget.cameras[0],
        ResolutionPreset.max);
    cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      widget.onDenied();
    }).then((value) {
      cameraController.startVideoRecording();
    });

    // cameraController.prepareForVideoRecording().then((value) => widget.onCameraStart());
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CameraPreview(cameraController);
  }
}
