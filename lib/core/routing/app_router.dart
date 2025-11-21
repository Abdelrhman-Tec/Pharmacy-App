import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/features/auth/presentation/screens/login_screen.dart';
class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

