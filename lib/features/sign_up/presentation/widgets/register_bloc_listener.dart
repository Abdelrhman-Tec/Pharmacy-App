import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/features/sign_up/presentation/cubit/register_cubit.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_snackbar.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../home/presentation/widgets/index.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
      current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.maybeWhen(
          loading: () => LoadingIndicator(color: AppColors.primaryGreen),
          success: (loginResponseBody) {
            context.pushNamedAndRemoveUntil(
              AppRoutes.login,
              predicate: (Route<dynamic> route) => false,
            );
            CustomSnackBar.showSuccess(
              context: context,
              message: 'تم انشاء الحساب بنجاح',
            );
          },
          failure: (message) =>
              CustomSnackBar.showError(context: context, message: message),
          orElse: () {},
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}