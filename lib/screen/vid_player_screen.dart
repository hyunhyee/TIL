import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VidPlayScreen extends StatefulWidget {
  const VidPlayScreen({Key? key}) : super(key: key);

  @override
  State<VidPlayScreen> createState() => _VidPlayScreenState();
}

class _VidPlayScreenState extends State<VidPlayScreen> {
  XFile? video;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: video == null ? renderEmpty() : renderVideo(),
    );
  }

  Widget renderEmpty() {
    return Container();
  }

  Widget renderVideo() {
    return Container();
  }
}
