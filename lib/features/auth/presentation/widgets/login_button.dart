import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_button.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: double.infinity,
      height: 60,
      text: S.current.login,
      gradient: AppColors.gradient,
      onPressed: () {},
    );
  }
}
