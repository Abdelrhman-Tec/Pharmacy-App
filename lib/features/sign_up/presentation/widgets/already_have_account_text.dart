import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  final VoidCallback onLoginTap;

  const AlreadyHaveAccountText({super.key, required this.onLoginTap});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '${S.current.alreadyHaveAccount} ',
        style: AppTextStyle.fontSize14WeightNormal.copyWith(
          color: AppColors.grey400,
        ),
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: GestureDetector(
              onTap: onLoginTap,
              child: Text(
                S.current.login,
                style: AppTextStyle.fontSize14WeightNormal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
