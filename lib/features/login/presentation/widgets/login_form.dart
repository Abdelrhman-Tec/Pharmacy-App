import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/helpers/validation.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/core/widgets/custom_text_field.dart';
import 'package:pharmacy_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: cubit.emailController,
            fillColor: AppColors.white,
            hintText: S.current.email,
            prefixIcon: Icons.email_outlined,
            validator: (value) => Validation.email(value),
          ),
          const Gap(20),
          CustomTextField(
            controller: cubit.passwordController,
            fillColor: AppColors.white,
            hintText: S.current.password,
            isPassword: true,
            prefixIcon: Icons.lock_outline,
            validator: (value) => Validation.password(value),
          ),
          const Gap(20),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              S.current.forgotPassword,
              style: AppTextStyle.fontSize14WeightNormal,
            ),
          ),
        ],
      ),
    );
  }
}
