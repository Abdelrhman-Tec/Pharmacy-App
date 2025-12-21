part of 'product_cubit.dart';

@freezed
abstract class ProductState<T> with _$ProductState<T> {
  factory ProductState.productInitial() = _Initial;
  factory ProductState.productLoading() = Loading<T>;
  factory ProductState.productLoaded(T data) = Loaded<T>;
  factory ProductState.productFailure({required String message}) = Failure<T>;
}
