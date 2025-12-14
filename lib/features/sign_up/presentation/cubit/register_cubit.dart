import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy_app/features/sign_up/data/model/register_request_body.dart';
import 'package:pharmacy_app/features/sign_up/data/repo/register_repo.dart';

import '../../../../core/networking/api_result.dart';
import '../../../home/presentation/widgets/index.dart';

part 'register_state.dart';

part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  void emitRegisterStates() async {
    final response = await _registerRepo.register(
      RegisterRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (registerResponseBody) {
        emit(RegisterState.success(registerResponseBody));
      },
      failure: (error) {
        emit(
          RegisterState.failure(
            message: error.apiErrorModel.message ?? 'Error',
          ),
        );
      },
    );
  }
}
