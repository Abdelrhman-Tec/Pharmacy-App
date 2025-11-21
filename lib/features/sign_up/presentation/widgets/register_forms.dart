import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_text_field.dart';
import 'package:pharmacy_app/generated/l10n.dart';
class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          fillColor: AppColors.white,
          hintText: S.current.fullName,
          prefixIcon: Icons.person_2_outlined,
        ),
        const Gap(20),
        CustomTextField(
          fillColor: AppColors.white,
          hintText: S.current.email,
          prefixIcon: Icons.email_outlined,
        ),
        const Gap(20),
        CustomTextField(
          fillColor: AppColors.white,
          hintText: S.current.phoneNumber,
          suffixIcon: Icons.phone,
          isPhoneField: true,
          initialCountryCode: "EG",
        ),
        const Gap(20),
        CustomTextField(
          fillColor: AppColors.white,
          hintText: S.current.password,
          isPassword: true,
          prefixIcon: Icons.lock_outline,
        ),
      ],
    );
  }
}
