import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_app_bar.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/product_details/presentation/widgets/product_details_body.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey50,
      appBar: CustomAppBar(title: S.current.productDetails),
      body: ProductDetailsBody(
        productName: 'بنادول اكسترا',
        productSubtitle: 'مسكن للآلام وخافض للحرارة',
        productImagePath: 'assets/products_image/الادوية.png',
        productPrice: 50.0,
      ),
    );
  }
}
