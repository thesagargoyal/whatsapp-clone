import 'package:camera/camera.dart';
import 'package:custom_image_picker/custom_image_picker.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  List<CameraDescription> cameras;
  CameraController _cameraController;

  List<dynamic> _galleryPhotos;

  @override
  void initState() {
    initializeCamera();
    super.initState();
  }

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    _cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    _cameraController.initialize().then((value) {
      if (!mounted) return;
      setState(() {});
    });
  }

  // Future<void> getImagesFromGallery(){
  //   final customImagePicker = CustomImagePicker();
  //   customImagePicker.getAllImages.then((value) => null);
  // }

  @override
  Widget build(BuildContext context) {
    if (!_cameraController.value.isInitialized) {
      return Container(
        height: 0,
        width: 0,
      );
    }

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
        )
      ],
    ));
  }
}
