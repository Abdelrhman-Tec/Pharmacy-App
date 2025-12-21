import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_app_bar.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_details_body.dart';
import 'package:pharmacy_app/features/products/data/model/products_response_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel productModel;

  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey50,
      appBar: CustomAppBar(title: S.current.productDetails),
      body: ProductDetailsBody(
        productName: productModel.name ?? '',
        productDescription: productModel.description ?? '',
        productImagePath: productModel.image ?? '',
        productPrice: productModel.price ?? '',
        productId: productModel.id ?? 0,
      ),
    );
  }
}
