import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.current.welcomeMessage,
          style: AppTextStyle.fontSize30WeightBold,
        ),
        Gap(5),
        Text(
          S.current.loginToContinue,
          style: AppTextStyle.fontSize18WeightNormal,
        ),
      ],
    );
  }
}