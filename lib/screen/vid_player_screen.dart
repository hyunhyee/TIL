import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VidPlayScreen extends StatefulWidget {
  const VidPlayScreen({Key? key}) : super(key: key);

  @override
  State<VidPlayScreen> createState() => _VidPlayScreenState();
}

class _VidPlayScreenState extends State<VidPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Home Screen'),
    );
  }
}
