import 'package:flutter/material.dart';

/// Custom badge widget for status indicators
class CustomBadge extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  const CustomBadge({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.padding,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

/// Status badge with predefined colors
class StatusBadge extends StatelessWidget {
  final String status;

  const StatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor = Colors.white;

    switch (status.toLowerCase()) {
      case 'pending':
      case 'قيد الانتظار':
        backgroundColor = Colors.orange;
        break;
      case 'processing':
      case 'قيد المعالجة':
        backgroundColor = Colors.blue;
        break;
      case 'shipped':
      case 'تم الشحن':
        backgroundColor = Colors.purple;
        break;
      case 'delivered':
      case 'تم التوصيل':
        backgroundColor = Colors.green;
        break;
      case 'cancelled':
      case 'ملغي':
        backgroundColor = Colors.red;
        break;
      default:
        backgroundColor = Colors.grey;
    }

    return CustomBadge(
      text: status,
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
  }
}

/// Count badge (for cart, notifications, etc.)
class CountBadge extends StatelessWidget {
  final int count;
  final Widget child;
  final Color? backgroundColor;

  const CountBadge({
    super.key,
    required this.count,
    required this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        if (count > 0)
          Positioned(
            right: -6,
            top: -6,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: backgroundColor ?? Colors.red,
                shape: BoxShape.circle,
              ),
              constraints: BoxConstraints(minWidth: 18, minHeight: 18),
              child: Center(
                child: Text(
                  count > 99 ? '99+' : count.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
