import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:warshat_link/core/app_theme/app_colors.dart';
import 'package:warshat_link/core/app_theme/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final String svgPath;
  final String text;

  const SocialLoginButton({Key? key, required this.svgPath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 52.h),
        backgroundColor: AppColors.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(svgPath, height: 24.h),
          SizedBox(width: 52.w),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.f16W400ThirdColor,
            ),
          ),
        ],
      ),
    );
  }
}
