import 'package:book_shop/views/SplashScreen.dart';
import 'package:book_shop/views/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: '/HomeView',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation.drive(Tween(begin: 0.0, end: 1.0)
                  .chain(CurveTween(curve: Curves.easeOut))),
              child: child,
            );
          },
          transitionDuration: Duration(seconds: 1),
        ),
      ),
    ],
  );
}
