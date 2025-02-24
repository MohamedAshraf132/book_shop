import 'package:flutter/material.dart';

class SplashscrenBody extends StatelessWidget {
  const SplashscrenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/Logo.png', height: 100),
        SizedBox(height: 4),
        Text(
          'Read Free Books',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
