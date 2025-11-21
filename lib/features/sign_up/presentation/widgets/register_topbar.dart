import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/helpers/navigation.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_logo.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class RegisterTopBar extends StatelessWidget {
  const RegisterTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const .only(left: 25),
          child: Row(
            mainAxisAlignment: .center,
            children: [
              GestureDetector(
                onTap: context.pop,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppColors.primaryGreen,
                ),
              ),
              const Spacer(),
              AppLogo(size: 50, iconSize: 100),
              const Gap(5),
              Text(
                S.current.myPharmcy,
                style: AppTextStyle.fontSize14WeightNormal.copyWith(
                  fontSize: 20.sp,
                  fontWeight: .bold,
                ),
              ),
              const Spacer(),
            ],
          ),
        )
        .animate()
        .fadeIn(duration: 500.ms)
        .scale(
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
          duration: 800.ms,
          curve: Curves.easeInOut,
        );
  }
}
