import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/features/home/data/models/category_model.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoryListView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: .symmetric(horizontal: 20),
        itemCount: categories.length,
        separatorBuilder: (context, index) => const Gap(16),
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryItem(title: category.title, image: category.image);
        },
      ),
    );
  }
}