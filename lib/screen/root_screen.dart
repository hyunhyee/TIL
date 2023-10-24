import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this); //상태 유지
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
      Container(
        child: Center(
          child: Text('Tab 1',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
      Container(
        child: Center(
          child: Text('Tab 2',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      )
    ];
  }

  BottomNavigationBar renderBottomNavigation() {
    return BottomNavigationBar(items: [
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
