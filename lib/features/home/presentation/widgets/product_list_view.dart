import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/product_card.dart';
import 'package:pharmacy_app/features/products/data/model/products_response_model.dart';
import 'package:pharmacy_app/features/products/presentation/cubit/product_cubit.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_snackbar.dart';
import '../../../../core/widgets/loading_indicator.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState<List<ProductModel>>>(
      builder: (context, state) {
        return state.when(
          productInitial: () => const SizedBox.shrink(),

          productLoading: () => const LoadingIndicator(
            color: AppColors.primaryGreen,
            message: 'Loading Products',
          ),

          productLoaded: (products) {
            return SizedBox(
              height: 245.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                itemCount: products.length,
                separatorBuilder: (_, _) => const Gap(15),
                itemBuilder: (context, index) {
                  final item = products[index];
                  return ProductCard(
                        title: item.name ?? 'product',
                        imagePath: item.image ?? '',
                        quantity: item.quantity.toString(),
                        price: item.price.toString(),
                        ontap: () {
                          context.pushNamed(
                            AppRoutes.productDetails,
                            arguments: item,
                          );
                        },
                      )
                      .animate(delay: (index * 100).ms)
                      .fadeIn(duration: 700.ms)
                      .slideY(
                        begin: 0.2,
                        duration: 400.ms,
                        curve: Curves.easeOut,
                      );
                },
              ),
            );
          },

          productFailure: (message) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              CustomSnackBar.showError(context: context, message: message);
            });
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
