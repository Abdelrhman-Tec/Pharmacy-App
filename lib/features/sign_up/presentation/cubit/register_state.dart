part of 'register_cubit.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = Loading<T>;
  const factory RegisterState.success(T message) = Success<T>;
  const factory RegisterState.failure({required String message}) = Failure<T>;
}
