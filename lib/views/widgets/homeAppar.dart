import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeAppar extends StatelessWidget {
  const HomeAppar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/Logo.png',
            width: 120,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/SearchView');
            },
            icon: const Icon(Icons.search, size: 32),
          )
        ],
      ),
    );
  }
}
