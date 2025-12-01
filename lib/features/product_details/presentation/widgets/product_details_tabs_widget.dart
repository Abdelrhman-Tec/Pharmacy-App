import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class ProductDetailsTabsWidget extends StatelessWidget {
  final String overview;
  final Map<String, String> specifications;

  const ProductDetailsTabsWidget({
    super.key,
    required this.overview,
    required this.specifications,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: AppColors.grey100,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: TabBar(
              labelColor: AppColors.white,
              unselectedLabelColor: AppColors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                gradient: AppColors.gradient,
                borderRadius: BorderRadius.circular(12.r),
              ),
              labelStyle: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
              tabs: const [
                Tab(text: "نظرة عامة"),
                Tab(text: "المواصفات"),
              ],
            ),
          ),
          SizedBox(
            height: 300.h,
            child: TabBarView(children: [_overviewSection(), _specsSection()]),
          ),
        ],
      ),
    );
  }

  Widget _overviewSection() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Text(
        overview,
        style: AppTextStyle.fontSize14WeightNormal.copyWith(
          color: AppColors.grey700,
          height: 1.6.h,
        ),
      ),
    );
  }

  Widget _specsSection() {
    return ListView.separated(
      padding: EdgeInsets.all(20.w),
      itemCount: specifications.length,
      separatorBuilder: (context, index) =>
          Divider(height: 24.h, color: AppColors.grey200),
      itemBuilder: (context, index) {
        final entry = specifications.entries.elementAt(index);
        return _specItem(entry.key, entry.value);
      },
    );
  }

  Widget _specItem(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
        ),
        const Gap(16),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 15.sp,
              color: AppColors.grey600,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
