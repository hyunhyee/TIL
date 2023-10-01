import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen3 extends StatelessWidget {
  HomeScreen3({Key? key}) : super(key: key);
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 3), (timer) {
      int? nextPage = pageController.page?.toInt();

      if (nextPage == null) {
        return;
      }

      if (nextPage == 2) {
        nextPage = 0;
      } else {
        nextPage++;
      }
      pageController.animateToPage(nextPage,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
        body: PageView(
      controller: pageController,
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
