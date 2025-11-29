import '../../data/banners_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'index.dart';

class BannersListView extends StatelessWidget {

  const BannersListView({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.separated(
        padding: .symmetric(horizontal: 20.w),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final item = BannersModel.banners[index];
          return ClipRRect(
            borderRadius: .circular(20),
            child: Image.asset(
              width: 400.w,
              item.image,
              fit: .cover,
            ),
          );
        },
        itemCount: BannersModel.banners.length,
        separatorBuilder: (_,_) => const Gap(20),
      ),
    );
  }
}
