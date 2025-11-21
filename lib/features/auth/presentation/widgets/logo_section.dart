import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/app_logo.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppLogo(size: 100, iconSize: 50);
  }
}
