// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/color_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';
import 'package:sarang_app/src/theme_manager/values_manger.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.labelName,
    required this.hintext,
    this.isObsecure = false,
    required this.controller,
  });
  final String labelName;
  final String hintext;
  final bool isObsecure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteTextStyle(),
        ),
        const SizedBox(
          height: AppSize.s8,
        ),
        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: getWhiteTextStyle(),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: AppPadding.p15,
              horizontal: AppPadding.p30,
            ),
            filled: true,
            fillColor: ColorManager.secondary,
            hintText: hintext,
            hintStyle: getBlack30TextStyle(),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSize.s50)),
          ),
        ),
        const SizedBox(
          height: AppSize.s14,
        )
      ],
    );
  }
}
