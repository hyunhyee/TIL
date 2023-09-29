import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen3 extends StatelessWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [1, 2, 3, 4, 5]
          .map(
            (number) => Image.asset('asset/img/'),
          )
          .toList(),
    ));
  }
}
