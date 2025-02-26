import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warshat_link/core/app_constants/app_assets.dart';
import 'package:warshat_link/core/app_theme/app_text_styles.dart';
import 'package:warshat_link/core/app_widgets/app_button.dart';
import 'package:warshat_link/core/app_widgets/password_text_form_field/password_text_form_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppAssets.leftArrow,
          ),
        ),
        title: Text(
          "Verification Code",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 90.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter a new password",
              style: AppTextStyles.f16W400ThirdColor,
            ),
            24.verticalSpace,
            PasswordTextFormField(
              controller: passwordController,
            ),
            12.verticalSpace,
            PasswordTextFormField(
              hintText: 'Confirm Password',
              controller: passwordConfirmController,
            ),
            34.verticalSpace,
            AppButton(
              buttonWidth: double.infinity,
              buttonText: "Confirm",
              buttonOnPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
