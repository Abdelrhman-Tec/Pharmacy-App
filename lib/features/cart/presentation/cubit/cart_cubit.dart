import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy_app/features/cart/data/model/cart_request_model.dart';
import 'package:pharmacy_app/features/cart/data/model/cart_response_model.dart';
import 'package:pharmacy_app/features/cart/data/repo/cart_repo.dart';
import '../../../../core/networking/api_result.dart';

part 'cart_state.dart';

part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState<List<CartItem>>> {
  final CartRepo _cartRepo;

  CartCubit(this._cartRepo) : super(CartState.cartInitial());

  // Get All Cart
  Future<void> emitGetAllCart() async {
    emit(CartState.cartLoading());

    final response = await _cartRepo.getAllProductsInCart();

    response.when(
      success: (items) {
        emit(CartState.cartLoaded(items));
      },
      failure: (error) {
        emit(
          CartState.cartFailure(
            message: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }

  // Add Product
  Future<void> emitAddProductToCart({
    required int productId,
    required int quantity,
  }) async {
    final response = await _cartRepo.addProductToCart(
      CartRequestModel(productId: productId, quantity: quantity),
    );

    response.when(
      success: (_) => emitGetAllCart(),
      failure: (error) {
        emit(
          CartState.cartFailure(
            message: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }

  // Remove Product
  Future<void> emitRemoveProductFromCart(int productId) async {
    final response = await _cartRepo.removeProductFromCart(productId);

    response.when(
      success: (_) => emitGetAllCart(),
      failure: (error) {
        emit(
          CartState.cartFailure(
            message: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }

  Future<void> increment({
    required int cartItemId,
    required int currentQuantity,
  }) async {
    final newQuantity = currentQuantity + 1;

    emit(CartState.cartLoading());

    final result = await _cartRepo.updateCartItemQuantity(
      CartUpdateRequestModel(cartItemId: cartItemId, quantity: newQuantity),
    );

    result.when(
      success: (cartResponse) {
        emit(CartState.cartLoaded(cartResponse.data.items));
      },
      failure: (error) {
        emit(CartState.cartFailure(message: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> decrement({
    required int cartItemId,
    required int currentQuantity,
  }) async {
    if (currentQuantity <= 1) {
      return;
    }

    final newQuantity = currentQuantity - 1;

    emit(CartState.cartLoading());

    final result = await _cartRepo.updateCartItemQuantity(
      CartUpdateRequestModel(cartItemId: cartItemId, quantity: newQuantity),
    );

    result.when(
      success: (cartResponse) {
        emit(CartState.cartLoaded(cartResponse.data.items));
      },
      failure: (error) {
        emit(CartState.cartFailure(message: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
