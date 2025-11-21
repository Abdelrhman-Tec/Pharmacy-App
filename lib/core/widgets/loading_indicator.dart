import 'package:flutter/material.dart';

/// Custom loading indicator widget
class LoadingIndicator extends StatelessWidget {
  final Color? color;
  final double size;
  final String? message;

  const LoadingIndicator({super.key, this.color, this.size = 40, this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          SizedBox(
            width: size,
            height: size,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                color ?? Theme.of(context).primaryColor,
              ),
            ),
          ),
          if (message != null) ...[
            SizedBox(height: 16),
            Text(
              message!,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),
          ],
        ],
      ),
    );
  }
}

/// Overlay loading indicator
class OverlayLoadingIndicator extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final String? message;

  const OverlayLoadingIndicator({
    super.key,
    required this.isLoading,
    required this.child,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: Colors.black.withValues(alpha: 0.3),
            child: LoadingIndicator(message: message),
          ),
      ],
    );
  }
}
