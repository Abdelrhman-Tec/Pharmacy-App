import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/helpers/validation.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_text_field.dart';
import 'package:pharmacy_app/features/sign_up/presentation/cubit/register_cubit.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          CustomTextField(
            fillColor: AppColors.white,
            hintText: S.current.fullName,
            prefixIcon: Icons.person_2_outlined,
            controller: cubit.nameController,
            validator: (value) => Validation.name(value),
          ),
          const Gap(20),
          CustomTextField(
            fillColor: AppColors.white,
            hintText: S.current.email,
            prefixIcon: Icons.email_outlined,
            controller: cubit.emailController,
            validator: (value) => Validation.email(value),
          ),
          const Gap(20),
          CustomTextField(
            fillColor: AppColors.white,
            hintText: S.current.phoneNumber,
            suffixIcon: Icons.phone,
            isPhoneField: true,
            initialCountryCode: "EG",
            controller: cubit.phoneController,
            validator: (value) =>
                Validation.phone(phone: value),
          ),
          const Gap(20),
          CustomTextField(
            fillColor: AppColors.white,
            hintText: S.current.password,
            isPassword: true,
            prefixIcon: Icons.lock_outline,
            controller: cubit.passwordController,
            validator: (value)=> Validation.password(value),
          ),
        ],
      ),
    );
  }
}
