import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pharmacy_app/core/helpers/navigation.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(AppRoutes.register),
      child:
          Text(
                S.current.createAccount,
                style: AppTextStyle.fontSize14WeightNormal.copyWith(),
              )
              .animate()
              .fadeIn(duration: 500.ms)
              .scale(
                begin: const Offset(0.9, 0.9),
                end: const Offset(1, 1),
                curve: Curves.easeOut,
              ),
    );
  }
}
