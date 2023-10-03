import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen4 extends StatelessWidget {
  const HomeScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[100],
        body: SafeArea(
          top: true,
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [_DDay(), _CoupleImage()],
          ),
        ));
  }
}

class _DDay extends StatelessWidget {
  const _DDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('hihi');
  }
}

class _CoupleImage extends StatelessWidget {
  const _CoupleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('asset/img/middle_image.png',
          height: MediaQuery.of(context).size.height / 4),
    );
  }
}
