import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widgets/explore_people_app_bar_widget.dart';
import 'package:sarang_app/src/common_widgets/explore_people_button_widget.dart';
import 'package:sarang_app/src/common_widgets/match_button_widget.dart';
import 'package:sarang_app/src/common_widgets/match_card_widget.dart';
import 'package:sarang_app/src/theme_manager/values_manger.dart';

class ExplorePeopleScreen extends StatelessWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.p40,
          horizontal: AppPadding.p24,
        ),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(),
            SizedBox(
              height: AppSize.s50,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: MatchCardWidget(),
                  ),
                  SizedBox(
                    height: AppSize.s50,
                  ),
                  //MatchButtonWidget(),
                  ExplorePeopleButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
