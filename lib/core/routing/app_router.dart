import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/core/di/di.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/features/category/presentation/screens/category_Screen.dart';
import 'package:pharmacy_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:pharmacy_app/features/login/presentation/screens/login_screen.dart';
import 'package:pharmacy_app/features/main_screen/main_screen.dart';
import 'package:pharmacy_app/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:pharmacy_app/features/sign_up/presentation/cubit/register_cubit.dart';
import 'package:pharmacy_app/features/sign_up/presentation/screens/register_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => sl<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case AppRoutes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );
      case AppRoutes.mainScreen:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case AppRoutes.productDetails:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
      case AppRoutes.categoryScreen:
        final title = settings.arguments as Map<String, String>;
        return MaterialPageRoute(
          builder: (_) => CategoryScreen(title: title['categoryTitle']!),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
