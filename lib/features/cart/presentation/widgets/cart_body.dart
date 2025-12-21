import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_button.dart';
import 'package:pharmacy_app/core/widgets/custom_snackbar.dart';
import 'package:pharmacy_app/core/widgets/loading_indicator.dart';
import 'package:pharmacy_app/features/cart/data/model/cart_response_model.dart';
import 'package:pharmacy_app/features/cart/presentation/cubit/cart_cubit.dart';
import '../../../home/presentation/widgets/index.dart';
import '../widgets/cart_item.dart';

class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  void initState() {
    super.initState();
    context.read<CartCubit>().emitGetAllCart();
  }

  double calculateTotal(List<CartItem> cart) {
    double total = 0;
    for (var item in cart) {
      total += item.subtotal;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CartCubit, CartState<List<CartItem>>>(
        builder: (context, state) {
          return state.maybeWhen(
            cartInitial: () => const SizedBox.shrink(),
            cartLoading: () => LoadingIndicator(color: AppColors.primaryGreen),
            cartLoaded: (cart) {
              if (cart.isEmpty) {
                return const Center(child: Text('السلة فارغة'));
              }
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final item = cart[index];
                        return Column(
                          children: [
                            CartItemWidget(
                              title: item.name,
                              description: item.description,
                              imagePath: item.image,
                              quantity: item.quantity,
                              price: item.price.toString(),
                              subTotal: item.subtotal.toString(),
                              onIncrement: () =>
                                  context.read<CartCubit>().increment(
                                    cartItemId: item.id,
                                    currentQuantity: item.quantity,
                                  ),
                              onDecrement: () =>
                                  context.read<CartCubit>().decrement(
                                    cartItemId: item.id,
                                    currentQuantity: item.quantity,
                                  ),
                              onDelete: () => context
                                  .read<CartCubit>()
                                  .emitRemoveProductFromCart(item.id),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 12),
                        CustomButton(
                          width: 100,
                          height: 56.h,
                          text: "اكمال الشراء",
                          gradient: AppColors.gradient,
                          onPressed: () {
                            if (cart.isEmpty) {
                              CustomSnackBar.showError(
                                context: context,
                                message: 'السلة فارغة!',
                              );
                              return;
                            }
                            CustomSnackBar.showSuccess(
                              context: context,
                              message: 'تم الضغط على اكتمال الشراء',
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            cartFailure: (message) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                CustomSnackBar.showError(context: context, message: message);
              });
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
