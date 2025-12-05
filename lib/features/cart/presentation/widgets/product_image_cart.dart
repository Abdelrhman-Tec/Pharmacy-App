import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class ProductImageCart extends StatelessWidget {
  final String image;

  const ProductImageCart({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.grey200, width: 0.8.w),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9.r),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: AppColors.grey50,
              child: Icon(
                Icons.medication_outlined,
                color: AppColors.grey400,
                size: 32.sp,
              ),
            );
          },
        ),
      ),
    );
  }
}