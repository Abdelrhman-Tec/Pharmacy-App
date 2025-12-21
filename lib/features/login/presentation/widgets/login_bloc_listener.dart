import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_snackbar.dart';
import 'package:pharmacy_app/core/widgets/loading_indicator.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/login/presentation/cubit/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.maybeWhen(
          loading: () => LoadingIndicator(color: AppColors.primaryGreen),
          success: (loginResponseBody) {
            context.pushNamedAndRemoveUntil(
              AppRoutes.mainScreen,
              predicate: (Route<dynamic> route) => false,
            );
            CustomSnackBar.showSuccess(
              context: context,
              message: 'تم تسجيل الدخول بنجاح',
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
