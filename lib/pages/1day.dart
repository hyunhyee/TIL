import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
          child: Center(
            child: Text("플러터 공부"),
          ),
        ),
      ),
    );
  }
}
