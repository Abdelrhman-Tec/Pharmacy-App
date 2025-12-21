import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/core/helpers/assets.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/core/widgets/custom_snackbar.dart';
import 'package:pharmacy_app/core/widgets/loading_indicator.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/product_card.dart';
import 'package:pharmacy_app/features/products/data/model/products_response_model.dart';
import 'package:pharmacy_app/features/products/presentation/cubit/product_cubit.dart';

class ProductsCategoryGridView extends StatelessWidget {
  const ProductsCategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState<List<ProductModel>>>(
      builder: (context, state) {
        return state.when(
          productInitial: () => const SizedBox.shrink(),
          productLoading: () => const LoadingIndicator(),
          productLoaded: (products) {
            return SizedBox(
              height: 600,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const .symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.7,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final item = products[index];
                  return ProductCard(
                    title: item.name ?? 'product',
                    imagePath: item.image ?? Assets.placeholderImage,
                    quantity: item.quantity.toString(),
                    price: item.price.toString(),
                    ontap: () {
                      context.pushNamed(
                        AppRoutes.productDetails,
                        arguments: item,
                      );
                    },
                  );
                },
              ),
            );
          },

          productFailure: (message) {
            CustomSnackBar.showError(context: context, message: message);
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
