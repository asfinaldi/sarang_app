import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widgets/custom_button_widget.dart';
import 'package:sarang_app/src/common_widgets/custom_text_button.dart';
import 'package:sarang_app/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:sarang_app/src/common_widgets/upload_photo_widget.dart';
import 'package:sarang_app/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:sarang_app/src/theme_manager/font_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';
import 'package:sarang_app/src/theme_manager/values_manger.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LogoAndTagLineWidget(),
              SizedBox(
                height: AppSize.s50,
              ),
              UploadPhotoWidget(),
              SizedBox(
                height: 53.0,
              ),
              Text(
                'Andi Mania',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f22,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              SizedBox(
                height: AppSize.s4,
              ),
              Text(
                '22, Lawyer',
                style: getBlack60TextStyle(),
              ),
              SizedBox(
                height: 240.0,
              ),
              CustomButtonWidget(
                title: 'Update My Profile',
                onTap: () {},
              ),
              SizedBox(
                height: AppSize.s20,
              ),
              CustomTextButton(
                title: 'Skip for Now',
                onPressed: () {
                  Navigator.pushNamed(
                      context,  ExplorePeopleScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
