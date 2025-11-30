import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final String imagePath;
  final String quantity;
  final String price;

  const ProductCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.quantity,
    required this.price,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.w,
      height: 100.h,
      child: Container(
        padding: .symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: .circular(20.r),
          border: Border.all(color: AppColors.grey500),
        ),
        child: Column(
          crossAxisAlignment: .start,
          mainAxisSize: .min,
          children: [
            Container(
              height: 110.h,
              decoration: BoxDecoration(
                color: AppColors.grey200,
                borderRadius: .circular(15.r),
              ),
              child: Center(
                child: Image.asset(
                  widget.imagePath,
                  width: 100.w,
                  fit: .contain,
                ),
              ),
            ),
            const Gap(10),
            Text(
              widget.title,
              maxLines: 1,
              overflow: .ellipsis,
              style: AppTextStyle.fontSize18WeightNormal.copyWith(
                color: AppColors.black,
              ),
            ),
            const Gap(6),
            Text(widget.quantity, style: AppTextStyle.fontSize14WeightNormal),
            const Gap(6),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  widget.price,
                  style: AppTextStyle.fontSize14WeightNormal.copyWith(
                    color: AppColors.black,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      isAdded = !isAdded;
                    });
                  },
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(scale: animation, child: child);
                    },
                    child: Icon(
                      isAdded ? Iconsax.tick_square : Iconsax.add_square,
                      key: ValueKey(isAdded),
                      color: AppColors.primaryGreen,
                      size: 29,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
