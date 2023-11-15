import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'package:til_flutter/screen/random_dice.dart';
import 'package:til_flutter/screen/settings_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with TickerProviderStateMixin {
  TabController? controller;
  double threshold = 2.7;
  int number = 1;

  ShakeDetector? shakeDetector;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this); //상태 유지
    controller!.addListener(tabListener);

    shakeDetector = ShakeDetector.autoStart(
        onPhoneShake: onPhoneShake,
        shakeSlopTimeMS: 100,
        shakeThresholdGravity: threshold);
  }

  void onPhoneShake() {
    final rand = new Random();

    setState(() {
      number = rand.nextInt(5) + 1;
    });
  }

  tabListener() {
    setState(() {});
  }

  //addListener() 함수는 controller 의 속성이 변할 때마다 특정 함수를 실행할 수 있도록 콜백 함수 등록 가능
  //이 콜백 함수에 setState()를 실행하여 controller 속성이 변경될 때마다 build()를 재실행
  //RootScreen 위젯이 생성될 때 단 한번만 리스너가 등록되면 되니까 initState()에서 실행

  @override
  void dispose() {
    controller!.removeListener(tabListener);
    shakeDetector!.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: renderChildren(),
      ),
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  List<Widget> renderChildren() {
    return [
      HomeScreen5(number: number),
      SettingsScreen(threshold: threshold, onThresholdChange: onThresholdChange)
    ];
  }

  void onThresholdChange(double val) {
    threshold = val;
    setState(() {
      //함수식(값으로평가) vs 함수문
    });
  }

  BottomNavigationBar renderBottomNavigation() {
    return BottomNavigationBar(
        currentIndex: controller!.index,
        onTap: (int index) {
          setState(() {
            controller!.animateTo(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.edgesensor_high_outlined),
            label: '주사위',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '설정',
          ),
        ]);
  }
}
