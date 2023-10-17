import 'package:flutter/material.dart';
import 'package:til_flutter/const/colors.dart';
import 'package:til_flutter/screen/day1.dart';
import 'package:til_flutter/screen/blog_web_app.dart';
import 'package:til_flutter/screen/image_carousel.dart';
import 'package:til_flutter/screen/random_dice.dart';
import 'package:til_flutter/screen/root_screen.dart';
import 'package:til_flutter/screen/u_and_i.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          sliderTheme: SliderThemeData(
            thumbColor: primaryColor,
            activeTrackColor: primaryColor,
            inactiveTrackColor: primaryColor.withOpacity(0.3),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: primaryColor,
            unselectedItemColor: secondaryColor,
            backgroundColor: backgroundColor,
          )),
      home: RootScreen(),
    ),
  );
}
