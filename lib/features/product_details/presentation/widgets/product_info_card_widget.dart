import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_counter_widget.dart';

class ProductInfoCardWidget extends StatelessWidget {
  final String name;
  final String description;
  final String price;

  const ProductInfoCardWidget({
    super.key,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.04),
            blurRadius: 15,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child:
          Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyle.fontSize30WeightBold.copyWith(
                      height: 1.2,
                    ),
                  ),
                  const Gap(20),
                  Text(
                    'الوصف',
                    style: AppTextStyle.fontSize18WeightNormal.copyWith(
                      color: AppColors.grey800,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    description,
                    style: AppTextStyle.fontSize14WeightNormal.copyWith(
                      color: AppColors.grey400,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const Gap(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'السعر',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.grey600,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Gap(4),
                          Text(
                            '$price جنيه ',
                            style: AppTextStyle.fontSize30WeightBold.copyWith(
                              color: AppColors.primaryGreen,
                            ),
                          ),
                        ],
                      ),
                      const ProductCounterWidget(),
                    ],
                  ),
                ],
              )
              .animate(delay: (0 * 100).ms)
              .fadeIn(duration: 700.ms)
              .slideY(begin: 0.2, duration: 400.ms, curve: Curves.easeOut),
    );
  }
}
