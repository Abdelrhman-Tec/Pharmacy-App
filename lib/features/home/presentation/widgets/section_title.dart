import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: .infinity,
      height: 50,
      child: Text(title, style: AppTextStyle.fontSize30WeightBold),
    );
  }
}
