import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/values_manger.dart';

import '../../../common_widgets/logo_widget.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign-up';
  const SignUpScreen({super.key});

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
              LogoWidget()
            ],
          ),
        ),
      ),
    );
  }
}
