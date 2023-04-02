import 'package:flutter/material.dart';

import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import '../theme_manager/values_manger.dart';

class PeopleIndentifyWidget extends StatelessWidget {
  const PeopleIndentifyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shyna',
            style: getWhiteTextStyle(
              fontSize: FontSizeManager.f28,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
          Text(
            '22, Lawyer',
            style: getBlackTextStyle(),
          ),
          const SizedBox(
            height: AppMargin.m16,
          ),
          Text(
            'I love solving problem in terms of finance,business, and any case. With you, we will solve all world problems.',
            style: getWhiteTextStyle(),
          ),
        ],
      ),
    );
  }
}
