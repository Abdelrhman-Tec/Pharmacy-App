import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/helpers/fix_url_Image.cart.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:photo_view/photo_view.dart';

class ProductImageWidget extends StatelessWidget {
  final String imagePath;

  const ProductImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.06),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          final PhotoViewController controller = PhotoViewController();

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Scaffold(
                body: Stack(
                  children: [
                    PhotoView(
                      controller: controller,
                      imageProvider: NetworkImage(fixImageUrl(imagePath)),
                      minScale: PhotoViewComputedScale.contained,
                      maxScale: PhotoViewComputedScale.covered * 2,
                    ),
                    Positioned(
                      top: 40.h,
                      right: 20.w,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppColors.white,
                          size: 30.sp,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    Positioned(
                      top: 40.h,
                      left: 20.w,
                      child: IconButton(
                        icon: Icon(
                          Icons.zoom_in,
                          color: AppColors.white,
                          size: 30.sp,
                        ),
                        onPressed: () {
                          controller.scale = (controller.scale ?? 1.0) * 1.2;
                        },
                      ),
                    ),
                    Positioned(
                      top: 40.h,
                      left: 70.w,
                      child: IconButton(
                        icon: Icon(
                          Icons.zoom_out,
                          color: AppColors.white,
                          size: 30.sp,
                        ),
                        onPressed: () {
                          controller.scale = (controller.scale ?? 1.0) / 1.2;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child:
            ClipRRect(
                  borderRadius: BorderRadius.circular(14.r),
                  child: Image.network(fixImageUrl(imagePath), fit: BoxFit.cover),
                )
                .animate(delay: (0 * 100).ms)
                .fadeIn(duration: 700.ms)
                .slideY(begin: 0.2, duration: 400.ms, curve: Curves.easeOut),
      ),
    );
  }
}
