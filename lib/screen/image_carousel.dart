import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen3 extends StatelessWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
        body: PageView(
      children: <Widget>[
        Image.asset('asset/img/image_1.png'),
        Image.asset('asset/img/image_2.png'),
        Image.asset(
          'asset/img/image_3.png',
          fit: BoxFit.cover,
        ),
      ],
    ));
  }
}
