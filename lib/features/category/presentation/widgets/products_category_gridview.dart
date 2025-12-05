import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/features/home/data/models/product_model.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/product_card.dart';

class ProductsCategoryGridView extends StatelessWidget {
  const ProductsCategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        padding: .symmetric(horizontal: 20, vertical: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 0.7,
        ),
        itemCount: ProductModel.products.length,
        itemBuilder: (context, index) {
          final item = ProductModel.products[index];
          return ProductCard(
            title: item.title,
            imagePath: item.imagePath,
            quantity: item.quantity,
            price: item.price,
            ontap: () {
              context.pushNamed(AppRoutes.productDetails);
            },
          );
        },
      ),
    );
  }
}
