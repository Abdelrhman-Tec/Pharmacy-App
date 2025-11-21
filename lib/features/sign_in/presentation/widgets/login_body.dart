import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/features/sign_in/presentation/widgets/create_account_text.dart';
import 'package:pharmacy_app/features/sign_in/presentation/widgets/login_button.dart';
import 'package:pharmacy_app/features/sign_in/presentation/widgets/login_form.dart';
import 'package:pharmacy_app/features/sign_in/presentation/widgets/logo_section.dart';
import 'package:pharmacy_app/features/sign_in/presentation/widgets/welcome_text.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding:.symmetric(horizontal: 20.w),
          child: Column(
            children: const [
              Gap(100),
              LogoSection(),
              Gap(10),
              WelcomeText(),
              Gap(40),
              LoginForm(),
              Gap(30),
              LoginButton(),
              Gap(20),
              CreateAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
