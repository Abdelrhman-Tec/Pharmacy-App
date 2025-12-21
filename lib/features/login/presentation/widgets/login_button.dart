import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_button.dart';
import 'package:pharmacy_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:pharmacy_app/generated/l10n.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: .infinity,
      height: 60.h,
      text: S.current.login,
      gradient: AppColors.gradient,
      onPressed: () => validateThenDoLogin(context),
    ).animate(
      effects: [
        FadeEffect(duration: 500.ms),
        ScaleEffect(
          begin: Offset(0.8, 0.8),
          end: Offset(1, 1),
          duration: 500.ms,
          curve: Curves.easeOut,
        ),
        MoveEffect(
          begin: Offset(0, 20),
          end: Offset(0, 0),
          duration: 500.ms,
          curve: Curves.easeOut,
        ),
      ],
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates();
  }
}
