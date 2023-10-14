import 'package:flutter/material.dart';
import 'package:til_flutter/screen/day1.dart';
import 'package:til_flutter/screen/blog_web_app.dart';
import 'package:til_flutter/screen/image_carousel.dart';
import 'package:til_flutter/screen/random_dice.dart';
import 'package:til_flutter/screen/u_and_i.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          fontFamily: 'sunflower',
          textTheme: TextTheme(
            displayLarge: TextStyle(
              color: Colors.white,
              fontSize: 80.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'parisienne',
            ),
            displayMedium: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700),
            bodyLarge: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            bodyMedium: TextStyle(color: Colors.white, fontSize: 20),
          )),
      home: HomeScreen5(),
    ),
  );
}
