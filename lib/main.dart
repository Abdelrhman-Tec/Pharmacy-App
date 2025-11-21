import 'package:flutter/material.dart';
import 'core/utils/local_storage.dart';
import 'core/utils/logger.dart';
import 'app.dart';

void main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize local storage
  await LocalStorage.init();
  AppLogger.info('✅ Local Storage initialized');

  // Log app start
  AppLogger.info('🚀 Starting Pharmacy App...');

  // Run the app
  runApp(const PharmacyApp());
}
