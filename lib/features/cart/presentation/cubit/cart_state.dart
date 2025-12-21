part of 'cart_cubit.dart';

@freezed
abstract class CartState<T> with _$CartState<T> {
  factory CartState.cartInitial() = _Initial;
  factory CartState.cartLoading() = Loading<T>;
  factory CartState.cartLoaded(T data) = Loaded<T>;
  factory CartState.cartFailure({required String message}) = Failure<T>;
}
