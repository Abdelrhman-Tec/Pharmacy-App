import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pharmacy_app/core/utils/app_logo.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const AppLogo(size: 100, iconSize: 40)
          .animate()
          .fadeIn(duration: 500.ms)
          .scale(
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
            duration: 800.ms,
            curve: Curves.easeInOut,
          ),
    );
  }
}
