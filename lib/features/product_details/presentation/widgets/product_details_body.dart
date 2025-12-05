import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_addtocart_bar_widget.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_image_widget.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_info_card_widget.dart';

class ProductDetailsBody extends StatelessWidget {
  final String productName;
  final String productDescription;
  final String productImagePath;
  final double productPrice;

  const ProductDetailsBody({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.productImagePath,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: .only(bottom: 110.h),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              ProductImageWidget(imagePath: productImagePath),
              ProductInfoCardWidget(
                name: productName,
                description: productDescription,
                price: productPrice,
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
