import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/helpers/fix_url_Image.cart.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../home/presentation/widgets/index.dart';
import 'quantity_counter.dart';

class CartItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final int quantity;
  final String price;
  final String subTotal;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onDelete;

  const CartItemWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.quantity,
    required this.price,
    required this.subTotal,
    required this.onIncrement,
    required this.onDecrement,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        padding: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            /// ===============================
            /// Image + Details
            /// ===============================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Image
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: AppColors.grey300),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image.network(
                      fixImageUrl(imagePath),
                      width: 90.w,
                      height: 90.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                /// Info
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Title + Delete
                        Row(
                          children: [
                            InkWell(
                              onTap: onDelete,
                              borderRadius: BorderRadius.circular(20),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Icon(
                                  Icons.close,
                                  size: 20,
                                  color: AppColors.grey400,
                                ),
                              ),
                            ),
                            const Gap(10),
                            Expanded(
                              child: Text(
                                title,
                                style: AppTextStyle.fontSize18WeightBold,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),

                        const Gap(6),

                        /// Description
                        Text(
                          description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.fontSize14WeightNormal.copyWith(
                            color: AppColors.grey400,
                            height: 1.4,
                          ),
                        ),

                        const Gap(14),

                        /// Quantity + Price
                        Row(
                          children: [
                            QuantityCounter(
                              quantity: quantity,
                              onIncrement: onIncrement,
                              onDecrement: onDecrement,
                            ),
                            const Gap(12),
                            Text(
                              price,
                              style: AppTextStyle.fontSize16WeightBold.copyWith(
                                color: AppColors.primaryGreen,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const Gap(12),
            Divider(color: AppColors.grey300),

            /// Subtotal
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Text(
                    'المجموع الفرعي',
                    style: AppTextStyle.fontSize16WeightNormal.copyWith(
                      color: AppColors.grey400,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "$subTotal جنيه ",
                    style: AppTextStyle.fontSize16WeightBold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
