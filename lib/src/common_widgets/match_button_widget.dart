// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sarang_app/src/theme_manager/asset_image_icon_manager.dart';

class MatchButtonWidget extends StatelessWidget {
  const MatchButtonWidget({
    Key? key,
    this.dimension = 50.0,
    required this.iconPath,
    required this.onTap,
  }) : super(key: key);

  final double dimension;
  final String iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: dimension,
        height: dimension,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('${AssetImageIconManager.assetPath}/$iconPath'),
          ),
        ),
      ),
    );
  }
}
