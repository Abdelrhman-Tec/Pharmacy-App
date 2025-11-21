import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/helpers/navigation.dart';
import 'package:pharmacy_app/core/routing/routes.dart';
import 'package:pharmacy_app/features/sign_up/presentation/widgets/already_have_account_text.dart';
import 'package:pharmacy_app/features/sign_up/presentation/widgets/register_button.dart';
import 'package:pharmacy_app/features/sign_up/presentation/widgets/register_forms.dart';
import 'package:pharmacy_app/features/sign_up/presentation/widgets/register_title_text.dart';
import 'package:pharmacy_app/features/sign_up/presentation/widgets/register_topbar.dart';
import 'package:pharmacy_app/generated/l10n.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const RegisterTopBar(),
              const Gap(50),
              RigesterTitleText(text: S.current.createAccount),
              const Gap(50),
              RegisterForm(),
              const Gap(50),
              RegisterButton(),
              const Gap(20),
              AlreadyHaveAccountText(
                onLoginTap: () => context.pushNamed(AppRoutes.login),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
