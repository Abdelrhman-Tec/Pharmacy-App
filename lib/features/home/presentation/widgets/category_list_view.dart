import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/widgets/loading_indicator.dart';
import 'package:pharmacy_app/features/category/presentation/cubit/category_cubit.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/category_item.dart';
import '../../../../core/helpers/navigation.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_snackbar.dart';
import '../../../category/data/model/category_response_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState<List<CategoryModel>>>(
      builder: (context, state) {
        return state.when(
          categoriesInitial: () => const SizedBox.shrink(),

          categoriesLoading: () => const LoadingIndicator(
            color: AppColors.primaryGreen,
            message: 'Loading Categories',
          ),

          categoriesLoaded: (categories) {
            return SizedBox(
              height: 160.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: categories.length,
                separatorBuilder: (_, _) => const Gap(16),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return CategoryItem(
                        title: category.name ?? '',
                        image: category.image ?? '',
                        ontap: () => context.pushNamed(
                          AppRoutes.categoryScreen,
                          arguments: category,
                        ),
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

          categoriesFailure: (message) {
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
