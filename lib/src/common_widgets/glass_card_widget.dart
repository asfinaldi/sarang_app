import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:sarang_app/src/theme_manager/font_manager.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';
import 'package:sarang_app/src/theme_manager/values_manger.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: EdgeInsets.symmetric(
        vertical: AppPadding.p15,
        horizontal: AppMargin.m24,
      ),
      margin: EdgeInsets.symmetric(
        vertical: AppMargin.m26,
        horizontal: AppMargin.m30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              '${AssetImageIconManager.assetPath}/glass_card_image.png'),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sabrina Anho',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f20,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              Text(
                '22, Traveler',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f14,
                ),
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        '${AssetImageIconManager.assetPath}/icon_profile.png'))),
          )
        ],
      ),
    );
  }
}
