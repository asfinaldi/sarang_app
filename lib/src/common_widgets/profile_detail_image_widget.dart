import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widgets/match_button_widget.dart';

import '../theme_manager/asset_image_icon_manager.dart';
import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import '../theme_manager/values_manger.dart';

class ProfileDetailImageWidget extends StatelessWidget {
  const ProfileDetailImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 420.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  '${AssetImageIconManager.assetPath}/people_leve1_image.png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p40,
            horizontal: AppPadding.p26,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MatchButtonWidget(
                dimension: 20.0,
                iconPath: 'icon_arrow_left.png',
                onTap: () {},
              ),
              Text(
                'Lover Profile \n Details',
                textAlign: TextAlign.center,
                style: getWhiteTextStyle(
                  fontWeight: FontWeightManager.semiBold,
                  fontSize: FontSizeManager.f20,
                ),
              ),
              MatchButtonWidget(
                dimension: 20.0,
                iconPath: 'icon_close_circle.png',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
