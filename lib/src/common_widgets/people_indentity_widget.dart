// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sarang_app/src/features/likes_you/domain/user.dart';

import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import '../theme_manager/values_manger.dart';

class PeopleIndentifyWidget extends StatelessWidget {
  const PeopleIndentifyWidget({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.fullName,
            style: getWhiteTextStyle(
              fontSize: FontSizeManager.f28,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
          Text(
            '${user.age}, ${user.occupation}',
            style: getBlackTextStyle(),
          ),
          const SizedBox(
            height: AppMargin.m16,
          ),
          Text(
            user.description,
            style: getWhiteTextStyle(),
          ),
        ],
      ),
    );
  }
}
