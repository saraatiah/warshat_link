import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warshat_link/core/app_theme/app_colors.dart';

class AppTextStyles {
  /// Font Size 32
  static final TextStyle f32W500ThirdColor = TextStyle(
    color: AppColors.thirdColor,
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
  );

  /// Font Size 24
  static final TextStyle f24W600ThirdColor = TextStyle(
    color: AppColors.thirdColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );

  /// Font Size 20
  static final TextStyle f20W600ThirdColor = TextStyle(
    color: AppColors.thirdColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );

  /// Font Size 18
  static final TextStyle f18W500ThirdColor = TextStyle(
    color: AppColors.thirdColor,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  /// Font Size 16
  static final TextStyle buttonTextStyle = TextStyle(
    color: AppColors.secondaryColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle f16W400HintTextColor = TextStyle(
    color: AppColors.hintTextColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle f16W400ThirdColor = TextStyle(
    color: AppColors.socialLoginButton,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  /// Font Size 12
  static final TextStyle f12W400PrimaryColor = TextStyle(
    fontSize: 12,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle f12W400HintTextColor = TextStyle(
    fontSize: 12,
    color: AppColors.hintTextColor,
    fontWeight: FontWeight.w400,
  );
}
