import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';

/// Application router configuration using GoRouter
class AppRouter {
  // Private constructor
  AppRouter._();

  /// GoRouter instance
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.home,
    debugLogDiagnostics: true,
    routes: [],

    // Error page
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 80, color: Colors.red),
            const SizedBox(height: 16),
            const Text(
              'صفحة غير موجودة',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              state.error?.toString() ?? 'حدث خطأ',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => context.go(AppRoutes.home),
              icon: const Icon(Icons.home),
              label: const Text('العودة للرئيسية'),
            ),
          ],
        ),
      ),
    ),
  );
}
