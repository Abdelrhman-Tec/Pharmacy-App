import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class ClearAllButton extends StatelessWidget {
  const ClearAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        // مسح الكل
      },
      icon: Icon(Icons.delete_outline, size: 18.sp, color: AppColors.error),
      label: Text(
        'مسح الكل',
        style: AppTextStyle.fontSize14WeightNormal.copyWith(
          color: AppColors.error,
        ),
      ),
    );
  }
}
