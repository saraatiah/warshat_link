import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warshat_link/core/app_constants/app_assets.dart';
import 'package:warshat_link/core/app_widgets/app_button.dart';
import 'package:warshat_link/core/app_widgets/custom_text_form_field.dart';
import 'package:warshat_link/core/app_theme/app_colors.dart';
import 'package:warshat_link/core/app_theme/app_text_styles.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isBuyer = false;
  bool isSeller = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nationalNumberController =
      TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

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
          "Let’s sign up",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 48.h,
                    ),
                    Text(
                      "Create a\nNew account",
                      style: AppTextStyles.f24W600ThirdColor,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.h),
                  child: SvgPicture.asset(AppAssets.signup1Logo),
                ),
              ],
            ),
            SizedBox(height: 36.h),
            CustomTextFormField(
              prefixIcon: SvgPicture.asset(AppAssets.person),
              hintText: "Name",
              controller: nameController,
              validationMessage: "Please Enter Your Name",
              keyBoardType: TextInputType.name,
            ),
            SizedBox(height: 12.h),
            CustomTextFormField(
              prefixIcon: SvgPicture.asset(AppAssets.phone),
              hintText: "Your Phone Number",
              controller: phoneNumberController,
              validationMessage: "Please Enter Your Phone Number",
              keyBoardType: TextInputType.phone,
            ),
            SizedBox(height: 12.h),
            CustomTextFormField(
              prefixIcon: SvgPicture.asset(AppAssets.nationalNumber),
              hintText: "National Number",
              controller: nationalNumberController,
              validationMessage: "Please Enter Your National Number",
              keyBoardType: TextInputType.phone,
            ),
            SizedBox(height: 12.h),
            CustomTextFormField(
              prefixIcon: SvgPicture.asset(AppAssets.address),
              hintText: "Address",
              controller: addressController,
              validationMessage: "Please Enter Your Address",
              keyBoardType: TextInputType.streetAddress,
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 12),
            Text("Select your account type",
                style: AppTextStyles.f20W600ThirdColor),
            CheckboxListTile(
              title: Text("Buy Services"),
              subtitle: Text("Find services that help me to get easier life"),
              value: isBuyer,
              onChanged: (value) {
                setState(() => isBuyer = value!);
              },
              activeColor: AppColors.primaryColor,
            ),
            CheckboxListTile(
              title: Text("Sell Services"),
              subtitle: Text("I look forward to offering my services to users"),
              value: isSeller,
              onChanged: (value) {
                setState(() => isSeller = value!);
              },
              activeColor: AppColors.primaryColor,
            ),
            Spacer(),
            AppButton(buttonText: "Next", buttonOnPressed: () {}),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
