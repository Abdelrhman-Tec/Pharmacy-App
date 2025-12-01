import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/features/main_screen/main_screen.dart';
import 'package:pharmacy_app/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:pharmacy_app/features/sign_in/presentation/screens/login_screen.dart';
import 'package:pharmacy_app/features/sign_up/presentation/screens/register_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRoutes.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case AppRoutes.productDetails:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
