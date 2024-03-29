// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:sarang_app/src/common_widgets/logo_widget.dart';
import 'package:sarang_app/src/features/authentication/data/data_user_account_local.dart';
import 'package:sarang_app/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:sarang_app/src/features/likes_you/presentation/people_loved_screen.dart';
import 'package:sarang_app/src/theme_manager/asset_image_icon_manager.dart';

class ExplorePeopleAppBarWidget extends StatelessWidget {
  const ExplorePeopleAppBarWidget({
    Key? key,
    this.imagePath,
  }) : super(key: key);

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            UserAccountRegister.userAccountLogout();
            Navigator.pushNamedAndRemoveUntil(
                context, SignUpScreen.routeName, (route) => false);
          },
          child: Container(
            width: 55.0,
            height: 55.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imagePath != null
                    ? FileImage(File(imagePath!))
                    : const AssetImage(
                            '${AssetImageIconManager.assetPath}/user_image.png')
                        as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const LogoWidget(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, PeopleLovedScreen.routeName);
          },
          child: Container(
            height: 24.0,
            width: 24.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    '${AssetImageIconManager.assetPath}/icon_notification.png'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
