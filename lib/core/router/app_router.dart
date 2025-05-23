import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:rainy_night/features/home/presentation/screens/home_screen.dart';

import '../network/dio_client.dart';
import '../storage/secure_storage.dart';

GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/main',
  debugLogDiagnostics: true,
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Error: ${state.error}'),
    ),
  ),
  redirect: (BuildContext context, GoRouterState state) async {
    FlutterNativeSplash.remove();

    return '/home';
  },
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
