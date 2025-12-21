import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy_app/features/products/data/model/products_response_model.dart';
import 'package:pharmacy_app/features/products/data/repo/product_repo.dart';
import '../../../../core/networking/api_result.dart';

part 'product_cubit.freezed.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState<List<ProductModel>>> {
  final ProductRepo _productRepo;

  ProductCubit(this._productRepo) : super(ProductState.productInitial());

  void emitGetAllProducts() async {
    emit(ProductState.productLoading());

    final response = await _productRepo.getAllProducts();
    response.when(
      success: (products) {
        emit(ProductState.productLoaded(products));
      },
      failure: (error) {
        emit(
          ProductState.productFailure(
            message: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }

  void emitGetProductsByCategory({required int categoryId}) async {
    emit(ProductState.productLoading());
    final response = await _productRepo.getProductsByCategory(id: categoryId);
    response.when(
      success: (products) {
        emit(ProductState.productLoaded(products));
      },
      failure: (error) {
        emit(
          ProductState.productFailure(
            message: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }
}
