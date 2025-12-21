import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pharmacy_app/core/networking/api_service.dart';
import 'package:pharmacy_app/core/networking/dio_factory.dart';
import 'package:pharmacy_app/features/cart/data/repo/cart_repo.dart';
import 'package:pharmacy_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:pharmacy_app/features/category/data/repo/category_repo.dart';
import 'package:pharmacy_app/features/category/presentation/cubit/category_cubit.dart';
import 'package:pharmacy_app/features/login/data/repo/login_repo.dart';
import 'package:pharmacy_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:pharmacy_app/features/products/data/repo/product_repo.dart';
import 'package:pharmacy_app/features/products/presentation/cubit/product_cubit.dart';
import 'package:pharmacy_app/features/sign_up/data/repo/register_repo.dart';
import 'package:pharmacy_app/features/sign_up/presentation/cubit/register_cubit.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio
  Dio dio = DioFactory.getDio();

  sl.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Repositories
  sl.registerLazySingleton<LoginRepo>(
    () => LoginRepo(apiService: sl<ApiService>()),
  );
  // Login
  sl.registerLazySingleton<LoginCubit>(() => LoginCubit(sl<LoginRepo>()));
  // Register
  sl.registerLazySingleton<RegisterRepo>(() => RegisterRepo(sl<ApiService>()));

  sl.registerLazySingleton<RegisterCubit>(
    () => RegisterCubit(sl<RegisterRepo>()),
  );

  // Categories

  sl.registerLazySingleton<CategoryRepo>(() => CategoryRepo(sl<ApiService>()));

  sl.registerLazySingleton<CategoryCubit>(
    () => CategoryCubit(sl<CategoryRepo>()),
  );

  // Products
  sl.registerLazySingleton<ProductRepo>(() => ProductRepo(sl<ApiService>()));

  sl.registerFactory<ProductCubit>(() => ProductCubit(sl<ProductRepo>()));

  // Cart
  sl.registerLazySingleton<CartRepo>(() => CartRepo(sl<ApiService>()));

  sl.registerFactory<CartCubit>(() => CartCubit(sl<CartRepo>()));
}
