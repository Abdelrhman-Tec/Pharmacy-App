import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy_app/core/networking/api_result.dart';
import 'package:pharmacy_app/features/category/data/model/category_response_model.dart';
import 'package:pharmacy_app/features/category/data/repo/category_repo.dart';
part 'category_state.dart';

part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState<List<CategoryModel>>> {
  final CategoryRepo _categoryRepo;

  CategoryCubit(this._categoryRepo) : super(_Initial());

  void emitGetAllCategories() async {
    final response = await _categoryRepo.getAllCategories();
    response.when(
      success: (categoryResponse) {
        emit(CategoryState.categoriesLoaded(categoryResponse));
      },
      failure: (error) {
        final errorMessage = error.apiErrorModel.message ?? 'Something went wrong';
        emit(CategoryState.categoriesFailure(message: errorMessage));
      },
    );
  }
}
