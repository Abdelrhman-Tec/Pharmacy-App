import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_addtocart_bar_widget.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_image_widget.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_info_card_widget.dart';

import '../../../../core/widgets/custom_snackbar.dart';
import '../../../cart/presentation/cubit/cart_cubit.dart';

class ProductDetailsBody extends StatelessWidget {
  final int productId;
  final String productName;
  final String productDescription;
  final String productImagePath;
  final String productPrice;

  const ProductDetailsBody({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.productImagePath,
    required this.productPrice, required this.productId,
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
                price: productPrice.toString(),
              ),
              const Gap(20),
            ],
          ),
        ),
        AddToCartBarWidget(
          onPressed: () {
            context.read<CartCubit>().emitAddProductToCart(
              productId: productId,
              quantity: 1,
            );
            CustomSnackBar.showSuccess(
              context: context,
              message: 'تم إضافة المنتج للسلة',
            );
          },
        )
      ],
    );
  }
}
