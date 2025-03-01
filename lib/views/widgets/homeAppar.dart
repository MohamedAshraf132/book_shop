import 'package:flutter/material.dart';

class HomeAppar extends StatelessWidget {
  const HomeAppar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            'assets/images/Logo.png',
            width: 120,
          ),
          SizedBox(width: 190),
          Icon(
            Icons.search,
            size: 32,
          )
        ],
      ),
    );
  }
}
