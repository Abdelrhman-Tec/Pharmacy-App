import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_button.dart';
import 'package:pharmacy_app/features/sign_up/presentation/cubit/register_cubit.dart';
import 'package:pharmacy_app/generated/l10n.dart';
class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: double.infinity,
      height: 60,
      text: S.current.login,
      gradient: AppColors.gradient,
      onPressed: () =>validateThenDoRegister(context),
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

void validateThenDoRegister(BuildContext context) {
  if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
    context.read<RegisterCubit>().emitRegisterStates();
  }
}

