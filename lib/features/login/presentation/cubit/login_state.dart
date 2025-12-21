part of 'login_cubit.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading<T>;
  const factory LoginState.success(T message) = Success<T>;
  const factory LoginState.failure({required String message}) = Failure<T>;
}
