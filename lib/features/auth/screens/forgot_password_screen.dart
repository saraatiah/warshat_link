import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:warshat_link/core/app_theme/app_text_styles.dart';
import 'package:warshat_link/core/app_widgets/custom_text_form_field.dart';

import '../../../core/app_constants/app_assets.dart';
import '../../../core/app_widgets/app_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final TextEditingController yourPhoneNumber = TextEditingController();

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
          "Forgot Password",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 34.w,
        ),
        child: Column(
          children: [
            Text(
              "We need your registration phone number to send you password reset code!",
              style: AppTextStyles.f16W400ThirdColor,
            ),
            32.verticalSpace,
            CustomTextFormField(
              prefixIcon: SvgPicture.asset(AppAssets.phone),
              hintText: "Your Phone Number",
              controller: yourPhoneNumber,
              validationMessage: "Please Enter Your Phone Number",
              keyBoardType: TextInputType.phone,
            ),
            20.verticalSpace,
            AppButton(
              buttonText: "Send Code",
              buttonOnPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
