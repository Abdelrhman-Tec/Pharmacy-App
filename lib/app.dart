import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/routing/app_router.dart';

/// Main application widget
class PharmacyApp extends StatelessWidget {
  const PharmacyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Design size (based on your design mockup)
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        ThemeData(textTheme: GoogleFonts.cairoTextTheme());
        return MaterialApp.router(
          // App Info
          title: 'Pharmacy App',
          debugShowCheckedModeBanner: false,

          // Routing
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
