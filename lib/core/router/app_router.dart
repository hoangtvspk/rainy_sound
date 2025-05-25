import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:rainy_night/features/home/presentation/screens/home_screen.dart';
import 'package:rainy_night/features/player/presentation/screens/player_screen.dart';
import 'package:rainy_night/features/player/presentation/screens/player_image_fullscreen.dart';
import 'package:rainy_night/core/models/rainy_sould/rainy_sound.dart';

import '../network/dio_client.dart';

GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/home',
  debugLogDiagnostics: true,
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Error: ${state.error}'),
    ),
  ),
  redirect: (BuildContext context, GoRouterState state) async {
    FlutterNativeSplash.remove();

    if (state.fullPath == '/' || state.fullPath == '/home') {
      return '/home';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/player/:id',
      pageBuilder: (context, state) {
        final id = int.tryParse(state.pathParameters['id'] ?? '') ?? 0;
        return CustomTransitionPage(
          key: state.pageKey,
          child: PlayerScreen(soundId: id),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0, 1);
            const end = Offset.zero;
            const curve = Curves.ease;
            final tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
      },
      routes: [
        GoRoute(
          path: 'fullscreen',
          builder: (context, state) {
            final sound = state.extra as RainySound;
            return PlayerImageFullscreen(sound: sound);
          },
        ),
      ],
    ),
  ],
);
