import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Camera extends StatefulWidget {
  int pos;
  Camera({
    Key? key,
    required this.pos,
  }) : super(key: key);
  @override
  _CameraState createState() => _CameraState(pos: pos);
}

class _CameraState extends State<Camera> {
  CameraController? controller;
  int pos;

  _CameraState({required this.pos});

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras![pos], ResolutionPreset.max);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller!.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CameraPreview(controller!),
    );
  }
}
