import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_details_tabs_widget.dart';

class ProductOverviewWidget extends StatelessWidget {
  final String overview;
  final Map<String, String> specifications;

  const ProductOverviewWidget({
    super.key,
    required this.overview,
    required this.specifications,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
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
      child: ProductDetailsTabsWidget(
        overview: overview,
        specifications: specifications,
      ),
    );
  }
}
