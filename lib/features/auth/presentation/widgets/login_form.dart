import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/core/widgets/custom_text_field.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          fillColor: AppColors.white,
          hintText: S.current.email,
          prefixIcon: Icons.email_outlined,
        ),
        const Gap(20),
        CustomTextField(
          fillColor: AppColors.white,
          hintText: S.current.password,
          isPassword: true,
          prefixIcon: Icons.lock_outline,
        ),
        const Gap(20),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Text(
            S.current.forgotPassword,
            style: AppTextStyle.fontSize14WeightNormal,
          ),
        ),
      ],
    );
  }
}
