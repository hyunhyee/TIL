import 'package:flutter/cupertino.dart';

import '../const/colors.dart';

class HomeScreen5 extends StatelessWidget {
  final int number;

  const HomeScreen5({required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('asset/img/$number.png'),
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          'Find your number',
          style: TextStyle(
            color: secondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          number.toString(),
          style: TextStyle(
            color: primaryColor,
            fontSize: 60,
            fontWeight: FontWeight.w200,
          ),
        )
      ],
    );
  }
}
