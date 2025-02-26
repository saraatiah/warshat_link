import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:warshat_link/core/app_theme/app_colors.dart';
import 'package:warshat_link/core/app_theme/app_text_styles.dart';

import '../../../core/app_constants/app_assets.dart';
import '../../../core/app_widgets/app_button.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

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
        padding: EdgeInsets.symmetric(
          horizontal: 34.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                "Enter the code we sent you",
                style: AppTextStyles.f16W400ThirdColor,
                // textAlign: TextAlign.center,
                //DON'T Work SO PUT AlIGN
              ),
            ),
            90.verticalSpace,
            Pinput(
              crossAxisAlignment: CrossAxisAlignment.center,
              length: 4,
              keyboardType: TextInputType.number,
              defaultPinTheme: PinTheme(
                width: 64.w,
                height: 64.h,
                textStyle: AppTextStyles.f32W500ThirdColor,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      blurRadius: 2.471,
                    ),
                  ],
                ),
              ),
              separatorBuilder: (index) => 20.horizontalSpace,
              onCompleted: (pin) {},
            ),
            104.verticalSpace,
            AppButton(
              buttonWidth: double.infinity,
              buttonText: "Verify",
              buttonOnPressed: () {},
            ),
            TextButton(
              child: Text(
                "Resend Code",
                style: AppTextStyles.f12W400PrimaryColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
