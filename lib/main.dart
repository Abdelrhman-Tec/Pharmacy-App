import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/utils/local_storage.dart';
import 'core/utils/logger.dart';
import 'app.dart';

void main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  //Lock the app orientation to portrait only
  await SystemChrome.setPreferredOrientations([.portraitUp, .portraitDown]);

  // Initialize local storage
  await LocalStorage.init();
  AppLogger.info('✅ Local Storage initialized');

  // Log app start
  AppLogger.info('🚀 Starting Pharmacy App...');

  // Run the app
  runApp(const PharmacyApp());
}
