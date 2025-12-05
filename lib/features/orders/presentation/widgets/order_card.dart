import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class OrderCard extends StatefulWidget {
  final Map<String, dynamic> order;

  const OrderCard({super.key, required this.order});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  bool isExpanded = false;

  String _getStatusText(String? status) {
    switch (status?.toLowerCase()) {
      case 'delivered':
      case 'completed':
        return 'تم التوصيل';
      case 'pending':
        return 'قيد الانتظار';
      case 'processing':
        return 'قيد المعالجة';
      case 'shipping':
      case 'on_the_way':
        return 'في الطريق';
      case 'cancelled':
        return 'ملغي';
      case 'failed':
        return 'فشل';
      case 'returned':
        return 'مرتجع';
      default:
        return 'غير محدد';
    }
  }

  Color _getStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'delivered':
      case 'completed':
        return AppColors.success;
      case 'pending':
        return AppColors.warning;
      case 'processing':
        return AppColors.info;
      case 'shipping':
      case 'on_the_way':
        return AppColors.primaryGreen;
      case 'cancelled':
      case 'failed':
        return AppColors.error;
      case 'returned':
        return AppColors.grey500;
      default:
        return AppColors.grey500;
    }
  }

  IconData _getStatusIcon(String? status) {
    switch (status?.toLowerCase()) {
      case 'delivered':
      case 'completed':
        return Icons.check_circle_outline;
      case 'pending':
        return Icons.access_time_outlined;
      case 'processing':
        return Icons.autorenew_outlined;
      case 'shipping':
      case 'on_the_way':
        return Icons.local_shipping_outlined;
      case 'cancelled':
      case 'failed':
        return Icons.cancel_outlined;
      case 'returned':
        return Icons.keyboard_return_outlined;
      default:
        return Icons.help_outline_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    final order = widget.order;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          _buildMainCard(order),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: isExpanded ? _buildDetailsCard(order) : const Gap(0),
          ),
        ],
      ),
    );
  }

  Widget _buildMainCard(Map<String, dynamic> order) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => setState(() => isExpanded = !isExpanded),
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey300.withValues(alpha: 0.15),
                blurRadius: 12.r,
                offset: Offset(0, 4.h),
              ),
            ],
            border: Border.all(color: AppColors.grey200, width: 0.5.w),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon Box
              Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryGreen.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Icon(
                    Icons.receipt_long_outlined,
                    color: AppColors.primaryGreen,
                    size: 24.sp,
                  ),
                ),
              ),
              Gap(12),

              // Order Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Order ID & Date
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildOrderNumber(order),
                        _buildOrderDate(order),
                      ],
                    ),
                    Gap(8),

                    // Total Price & Status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildTotalPrice(order),
                        _buildStatusBadge(order['status']),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(12),

              // Expand Arrow
              AnimatedRotation(
                duration: const Duration(milliseconds: 300),
                turns: isExpanded ? 0.5 : 0,
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 24.sp,
                  color: AppColors.grey500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderNumber(Map<String, dynamic> order) {
    return Text(
      "طلب #${order['id']}",
      style: AppTextStyle.fontSize14WeightNormal.copyWith(
        color: AppColors.grey900,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildOrderDate(Map<String, dynamic> order) {
    return Text(
      order['created_at']?.toString().split(' ').first ?? '',
      style: AppTextStyle.fontSize14WeightNormal.copyWith(
        color: AppColors.grey600,
      ),
    );
  }

  Widget _buildTotalPrice(Map<String, dynamic> order) {
    return Text(
      "${order['total']?.toStringAsFixed(2) ?? '0.00'} ريال",
      style: AppTextStyle.fontSize14WeightNormal.copyWith(
        color: AppColors.primaryGreen,
      ),
    );
  }

  Widget _buildStatusBadge(String status) {
    final color = _getStatusColor(status);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: color.withValues(alpha: 0.3), width: 0.5.w),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(_getStatusIcon(status), size: 14.sp, color: color),
          Gap(4),
          Text(
            _getStatusText(status),
            style: AppTextStyle.fontSize14WeightNormal.copyWith(color: color),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsCard(Map<String, dynamic> order) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 8.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.grey50,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.grey200, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Title
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: Text(
              'تفاصيل الطلب',
              style: AppTextStyle.fontSize14WeightNormal.copyWith(
                color: AppColors.grey800,
              ),
            ),
          ),

          // Divider
          Divider(color: AppColors.grey300, height: 1.h, thickness: 0.5.w),
          Gap(12),

          // Address Section
          _buildDetailSection(
            icon: Icons.location_on_outlined,
            title: 'العنوان',
            value: "${order['street']}, ${order['city']}",
          ),
          Gap(8),

          // Area Section
          _buildDetailSection(
            icon: Icons.location_city_outlined,
            title: 'المنطقة',
            value: "${order['state']} • ${order['zip_code']}",
          ),
          Gap(8),

          // Date Section
          _buildDetailSection(
            icon: Icons.calendar_today_outlined,
            title: 'تاريخ الطلب',
            value: order['created_at'] ?? '---',
          ),

          // Action Buttons (Optional)
          Gap(16),
        ],
      ),
    );
  }

  Widget _buildDetailSection({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: AppTextStyle.fontSize14WeightNormal.copyWith(
                  color: AppColors.grey600,
                ),
              ),
              Gap(2),
              Text(
                value,
                style: AppTextStyle.fontSize14WeightNormal.copyWith(
                  color: AppColors.grey900,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Gap(8),
        Icon(icon, size: 18.sp, color: AppColors.grey500),
      ],
    );
  }
}
