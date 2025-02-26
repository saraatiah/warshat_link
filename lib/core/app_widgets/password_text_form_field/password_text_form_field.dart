import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:warshat_link/core/app_constants/app_assets.dart';
import 'package:warshat_link/core/app_widgets/custom_text_form_field.dart';
import 'bloc/password_field_cubit.dart';
import 'bloc/password_field_states.dart';

class PasswordTextFormField extends StatelessWidget {
  PasswordTextFormField(
      {required this.controller, this.hintText = 'Password', super.key});

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) {
      return PasswordFieldCubit();
    }, child: BlocBuilder<PasswordFieldCubit, PasswordFieldState>(
        builder: (BuildContext context, PasswordFieldState state) {
      return CustomTextFormField(
        keyBoardType: TextInputType.visiblePassword,
        //TODO App Strings
        validationMessage: "please_fill_this_field".tr(),
        controller: controller,
        prefixIcon: SvgPicture.asset(AppAssets.lockIcon),
        suffixIcon: IconButton(
          onPressed: () {
            context.read<PasswordFieldCubit>().changeHiddenStatue();
          },
          icon: (context.read<PasswordFieldCubit>().hiddenPassword)
              ? SvgPicture.asset(AppAssets.closedEyeIcon)
              : SvgPicture.asset(AppAssets.openedEyeIcon),
        ),
        obscureText: (context.read<PasswordFieldCubit>().hiddenPassword),
        hintText: hintText,
      );
    }));
  }
}
