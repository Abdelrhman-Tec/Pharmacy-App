import 'dart:ui';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      toolbarHeight: 180,
      elevation: 0,
      flexibleSpace: ClipRRect(
        borderRadius: .vertical(bottom: .circular(50)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 300),
          child: Container(
            color: AppColors.scaffoldBackground.withValues(alpha: 0.7),
            child: Column(
              mainAxisAlignment: .end,
              children: [
                const HomeTopBar()
                    .paddingSymmetric(h: 20)
                    .animate(delay: (0 * 100).ms)
                    .fadeIn(duration: 700.ms)
                    .slideY(
                      begin: 0.2,
                      duration: 400.ms,
                      curve: Curves.easeOut,
                    ),
                const Gap(20),
                HomeSearchBar().paddingSymmetric(h: 20),
                const Gap(30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(190);
}
