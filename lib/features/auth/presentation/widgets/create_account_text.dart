import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.current.createAccount,
      style: AppTextStyle.fontSize14WeightNormal,
    );
  }
}
