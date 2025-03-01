import 'package:book_shop/views/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const HomeScreen(),
          transition: Transition.fadeIn, duration: const Duration(seconds: 1));
    });
  }

  void initAnimation() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              opacity: _opacity,
              child: Image.asset('assets/images/Logo.png', height: 100),
            ),
            const SizedBox(height: 4),
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              opacity: _opacity,
              child: const Text(
                'Read Free Books',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
