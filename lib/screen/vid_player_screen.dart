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
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Logo(),
          SizedBox(height: 30.0),
          _AppName(),
        ],
      ),
    );
  }

  Widget renderVideo() {
    return Container();
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('asset/img/logo.png');
  }
}

class _AppName extends StatelessWidget {
  const _AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
