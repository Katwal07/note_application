import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_application/core/config/routes/routes_name.dart';
import 'package:note_application/module/auth/login/login_screen.dart';
import 'package:note_application/module/auth/register/presentation/regtister_screen.dart';
import 'package:note_application/module/start/onboard/presentation/on_boardingscreen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final GoRouter goRoute = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: RouteNames.first,
    routes: [
      GoRoute(
          path: RouteNames.first,
          builder: (context, state) => OnBoardingscreen()),
      GoRoute(
          path: RouteNames.login, builder: (context, state) => LoginScreen()),
      GoRoute(
          path: RouteNames.register,
          builder: (context, state) => RegtisterScreen()),
    ]);
