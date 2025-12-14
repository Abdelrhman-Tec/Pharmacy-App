import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy_app/app.dart';
import 'package:pharmacy_app/core/di/di.dart';
import 'core/utils/local_storage.dart';
import 'core/utils/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Lock the app orientation to portrait only
  await SystemChrome.setPreferredOrientations([.portraitUp, .portraitDown]);

  // Initialize local storage
  await LocalStorage.init();
  AppLogger.info('Local Storage initialized');

  // Log app start
  AppLogger.info('Starting Pharmacy App...');

  await setupGetIt();

  // Run the app
  runApp(const PharmacyApp());
}
