import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warshat_link/core/app_theme/app_colors.dart';
import 'package:warshat_link/core/app_theme/app_text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {this.buttonWidth = 325,
      required this.buttonText,
      required this.buttonOnPressed,
      this.textColor = AppColors.secondaryColor,
      this.buttonColor = AppColors.primaryColor,
      this.buttonColorSide = AppColors.primaryColor,
      super.key});

  final Color buttonColor;
  final Color buttonColorSide;
  final Color textColor;
  final String buttonText;
  final Function buttonOnPressed;
  final double buttonWidth;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          buttonOnPressed();
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: BorderSide(color: buttonColorSide),
            backgroundColor: buttonColor,
            minimumSize: Size(buttonWidth.w, 52.h)),
        child: Text(
          buttonText,
          style: AppTextStyles.buttonTextStyle.copyWith(color: textColor),
        ));
  }
}
