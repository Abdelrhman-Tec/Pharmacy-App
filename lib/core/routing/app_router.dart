import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/core/di/di.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:pharmacy_app/features/category/data/model/category_response_model.dart';
import 'package:pharmacy_app/features/category/presentation/cubit/category_cubit.dart';
import 'package:pharmacy_app/features/category/presentation/screens/category_Screen.dart';
import 'package:pharmacy_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:pharmacy_app/features/login/presentation/screens/login_screen.dart';
import 'package:pharmacy_app/features/main_screen/main_screen.dart';
import 'package:pharmacy_app/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:pharmacy_app/features/products/data/model/products_response_model.dart';
import 'package:pharmacy_app/features/products/presentation/cubit/product_cubit.dart';
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
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<CategoryCubit>(
                create: (context) =>
                    sl<CategoryCubit>()..emitGetAllCategories(),
              ),
              BlocProvider<ProductCubit>(
                create: (context) => sl<ProductCubit>()..emitGetAllProducts(),
              ),
              BlocProvider<CartCubit>(create: (context) => sl<CartCubit>()),
            ],
            child: const MainScreen(),
          ),
        );

      case AppRoutes.productDetails:
        final productModel = settings.arguments as ProductModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<CartCubit>(
            create: (context) => sl<CartCubit>(),
            child: ProductDetailsScreen(productModel: productModel),
          ),
        );
      case AppRoutes.categoryScreen:
        final category = settings.arguments as CategoryModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sl<ProductCubit>()
                  ..emitGetProductsByCategory(categoryId: category.id),
            child: CategoryScreen(categoryName: category.name ?? 'التصنيفات'),
          ),
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
