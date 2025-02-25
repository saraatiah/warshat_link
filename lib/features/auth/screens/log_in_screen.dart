import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warshat_link/core/app_constants/app_assets.dart';
import 'package:warshat_link/core/app_theme/app_colors.dart';
import 'package:warshat_link/core/app_theme/app_text_styles.dart';
import 'package:warshat_link/core/app_widgets/app_button.dart';
import 'package:warshat_link/core/app_widgets/custom_text_form_field.dart';
import 'package:warshat_link/core/app_widgets/password_text_form_field/password_text_form_field.dart';
import 'package:warshat_link/features/auth/widgets/social_login_button.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 34.h,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Let's login", style: AppTextStyles.f18W500ThirdColor),
                SizedBox(height: 12.h),
                SvgPicture.asset(AppAssets.loginLogo),
                SizedBox(height: 8.h),
                Text(
                  "Welcome!",
                  style: AppTextStyles.f32W500ThirdColor,
                ),
                SizedBox(height: 28.h),
                CustomTextFormField(
                  prefixIcon: SvgPicture.asset(
                    AppAssets.phone,
                  ),
                  hintText: "Your phone number",
                  controller: phoneController,
                  validationMessage: '',
                  keyBoardType: TextInputType.phone,
                ),
                SizedBox(height: 20.h),
                PasswordTextFormField(
                  controller: passwordController,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
                SizedBox(height: 72.h),
                AppButton(
                  buttonText: 'LogIn',
                  buttonOnPressed: () {},
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "or",
                        style: AppTextStyles.f12W400HintTextColor,
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 12.h),
                SocialLoginButton(
                    svgPath: AppAssets.google, text: "Sign in with Google"),
                SizedBox(height: 10.h),
                SocialLoginButton(
                    svgPath: AppAssets.apple, text: "Sign in with Apple"),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: AppTextStyles.f12W400PrimaryColor.copyWith(
                        color: const Color(0xFF183E62),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                      ),
                      child: Text(
                        "Sign up",
                        style: AppTextStyles.f12W400PrimaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
