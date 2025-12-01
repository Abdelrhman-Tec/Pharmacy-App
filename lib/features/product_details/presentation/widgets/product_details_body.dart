import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_addtocart_bar_widget.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_image_widget.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_info_card_widget.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_overview_widget.dart';

class ProductDetailsBody extends StatelessWidget {
  final String productName;
  final String productSubtitle;
  final String productImagePath;
  final double productPrice;

  const ProductDetailsBody({
    super.key,
    required this.productName,
    required this.productSubtitle,
    required this.productImagePath,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(bottom: 110.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImageWidget(imagePath: productImagePath),
              ProductInfoCardWidget(
                name: productName,
                subtitle: productSubtitle,
                price: productPrice,
              ),
              const Gap(20),
              ProductOverviewWidget(
                overview:
                    "هذا المنتج يتميز بجودة عالية ومناسب للاستخدام اليومي، كما أنه مصنوع من مواد آمنة.",
                specifications: {
                  "النوع": "دواء – أقراص",
                  "الكمية": "20 قرص",
                  "التركيز": "500mg",
                  "بلد المنشأ": "مصر",
                  "الاستخدام": "مسكن وخافض للحرارة",
                },
              ),
              const Gap(20),
            ],
          ),
        ),
        AddToCartBarWidget(onPressed: () {}),
      ],
    );
  }
}