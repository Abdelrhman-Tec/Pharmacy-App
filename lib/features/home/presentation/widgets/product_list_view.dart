import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/features/home/data/models/product_model.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/product_card.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 245.h,
      child: ListView.separated(
        scrollDirection: .horizontal,
        physics: BouncingScrollPhysics(),
        padding: .symmetric(horizontal: 20.w),
        itemCount: ProductModel.products.length,
        separatorBuilder: (context, index) => const Gap(15),
        itemBuilder: (context, index) {
          final product = ProductModel.products[index];

          return ProductCard(
                title: product.title,
                imagePath: product.imagePath,
                quantity: product.quantity,
                price: product.price,
                ontap: () {
                  context.pushNamed(AppRoutes.productDetails);
                },
              )
              .animate(delay: (index * 100).ms)
              .fadeIn(duration: 700.ms)
              .slideY(begin: 0.2, duration: 400.ms, curve: Curves.easeOut);
        },
      ),
    );
  }
}
