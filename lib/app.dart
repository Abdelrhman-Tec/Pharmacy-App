import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacy_app/core/routing/app_router.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class PharmacyApp extends StatelessWidget {
  const PharmacyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Pharmacy App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.scaffoldBackground,
            textTheme: GoogleFonts.cairoTextTheme(),
          ),
          initialRoute: AppRoutes.login,
          onGenerateRoute: (settings) {
            return AppRouter().generateRoute(settings);
          },
          locale: const Locale('ar'),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      },
    );
  }
}
