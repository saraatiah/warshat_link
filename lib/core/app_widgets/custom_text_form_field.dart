import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warshat_link/core/app_theme/app_colors.dart';
import 'package:warshat_link/core/app_theme/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.validationMessage,
      required this.keyBoardType,
      required this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.obscureText = false});

  final String? hintText;
  final TextEditingController controller;
  final IconButton? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final String validationMessage;
  final TextInputType keyBoardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325.w,
      child: TextFormField(
        controller: controller,
        cursorColor: AppColors.thirdColor,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 14.h,
          ),
          fillColor: Color(0xFFD1D9E0),
          filled: true,
          hintText: hintText,
          hintStyle: AppTextStyles.f16W400HintTextColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: AppColors.thirdColor,
              width: 2.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: AppColors.thirdColor,
              width: 2.w,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: AppColors.thirdColor,
              width: 2.w,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0.w),
            child: prefixIcon,
          ),
          prefixIconConstraints:
              BoxConstraints(minHeight: 22.h, minWidth: 22.w),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: suffixIcon,
          ),
          suffixIconConstraints:
              BoxConstraints(minHeight: 20.h, minWidth: 20.w),
        ),
        textInputAction: TextInputAction.next,
        obscureText: obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validationMessage;
          }
          return null;
        },
      ),
    );
  }
}
