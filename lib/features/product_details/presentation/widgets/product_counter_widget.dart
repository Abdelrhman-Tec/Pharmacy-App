import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';

class ProductCounterWidget extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int>? onChanged;
  final int minValue;
  final int? maxValue;

  const ProductCounterWidget({
    super.key,
    this.initialValue = 1,
    this.onChanged,
    this.minValue = 1,
    this.maxValue,
  });

  @override
  State<ProductCounterWidget> createState() => _ProductCounterWidgetState();
}

class _ProductCounterWidgetState extends State<ProductCounterWidget> {
  late int value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue.clamp(widget.minValue, widget.maxValue ?? 9999);
  }

  void _increment() {
    if (widget.maxValue == null || value < widget.maxValue!) {
      setState(() => value++);
      widget.onChanged?.call(value);
    }
  }

  void _decrement() {
    if (value > widget.minValue) {
      setState(() => value--);
      widget.onChanged?.call(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _counterButton(
            Icons.remove_rounded,
            _decrement,
            value <= widget.minValue,
          ),
          Container(
            constraints: BoxConstraints(minWidth: 45.w),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "$value",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
            ),
          ),
          _counterButton(
            Icons.add_rounded,
            _increment,
            widget.maxValue != null && value >= widget.maxValue!,
          ),
        ],
      ),
    );
  }

  Widget _counterButton(IconData icon, VoidCallback onTap, bool disabled) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: disabled ? null : onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: disabled
                ? Colors.grey[200]
                : AppColors.primaryGreen.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Icon(
            icon,
            size: 20.sp,
            color: disabled ? AppColors.grey400 : AppColors.primaryGreen,
          ),
        ),
      ),
    );
  }
}
