import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
class RigesterTitleText extends StatelessWidget {
  final String text;
  final Duration fadeDuration;
  final Duration scaleDuration;

  const RigesterTitleText({
    super.key,
    required this.text,
    this.fadeDuration = const Duration(milliseconds: 500),
    this.scaleDuration = const Duration(milliseconds: 800),
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppTextStyle.fontSize30WeightBold)
        .animate()
        .fadeIn(duration: fadeDuration)
        .scale(
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
          duration: scaleDuration,
          curve: Curves.easeInOut,
        );
  }
}
