// import 'package:flutter_animate/flutter_animate.dart';
//
// import '../../data/models/banners_model.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'index.dart';

// class BannersListView extends StatelessWidget {
//   const BannersListView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 170.h,
//       child: ListView.separated(
//         padding: .symmetric(horizontal: 20.w),
//         physics: const BouncingScrollPhysics(),
//         scrollDirection: .horizontal,
//         itemBuilder: (_, index) {
//           final item = BannersModel.banners[index];
//           return ClipRRect(
//                 borderRadius: .circular(20),
//                 child: Image.asset(width: 350.w, item.image, fit: .fill),
//               )
//               .animate(delay: (index * 100).ms)
//               .fadeIn(duration: 700.ms)
//               .slideY(begin: 0.2, duration: 400.ms, curve: Curves.easeOut);
//         },
//         itemCount: BannersModel.banners.length,
//         separatorBuilder: (_, _) => const Gap(20),
//       ),
//     );
//   }
// }
