part of 'category_cubit.dart';

@freezed
abstract class CategoryState<T> with _$CategoryState<T> {
  factory CategoryState.categoriesInitial() = _Initial;

  factory CategoryState.categoriesLoading() = Loading<T>;

  factory CategoryState.categoriesLoaded(T data) = Loaded<T>;

  factory CategoryState.categoriesFailure({required String message}) =
      Failure<T>;
}
