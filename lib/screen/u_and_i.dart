import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen4 extends StatefulWidget {
  const HomeScreen4({Key? key}) : super(key: key);

  @override
  State<HomeScreen4> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen4> {
  DateTime firstDay = DateTime.now();

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
            children: [
              _DDay(onHeartPressed: changeFirstDay, firstDay: firstDay),
              _CoupleImage()
            ],
          ),
        ));
  }

  void changeFirstDay() {
    setState(() {
      firstDay = firstDay.subtract(Duration(days: 1));
    });
  }
}

class _DDay extends StatelessWidget {
//  const _DDay({Key? key}) : super(key: key);
  final GestureTapCallback onHeartPressed;
  final DateTime firstDay;

  _DDay({required this.onHeartPressed, required this.firstDay});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          'U&I',
          style: textTheme.displayLarge,
        ),
        SizedBox(height: 16),
        Text(
          '우리 처음 만난 날',
          style: textTheme.bodyLarge,
        ),
        Text(
          '${firstDay.year}.${firstDay.month}.${firstDay.day}',
          style: textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
        IconButton(
          iconSize: 60,
          onPressed: onHeartPressed,
          icon: Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'D+${DateTime(now.year, now.month, now.day).difference(firstDay).inDays + 1}',
          style: textTheme.displayMedium,
        )
      ],
    );
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
