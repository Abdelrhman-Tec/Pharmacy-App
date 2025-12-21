import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/app.dart';
import 'package:pharmacy_app/core/di/di.dart';
import 'core/helpers/check_if_logged_in_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Lock application orientation to portrait mode only (no landscape)
  SystemChrome.setPreferredOrientations([.portraitUp, .portraitDown]);

  // Initialize ScreenUtil to get correct screen size before building UI
  ScreenUtil.ensureScreenSize();

  // Setup GetIt service locator (Dependency Injection)
  await setupGetIt();

  // Check if there is a logged-in user and load initial app state
  await checkIfLoggedInUser();

  runApp(PharmacyApp());
}
