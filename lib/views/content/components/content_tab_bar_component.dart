import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_typography.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class ContentTabBarComponent extends StatelessWidget {
  final TabController? controller;

  ContentTabBarComponent(this.controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 180),
      child: TabBar(
          labelPadding: EdgeInsets.zero,
          labelColor: AppColors.primaryColor,
          controller: controller,
          unselectedLabelColor: AppColors.black54,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          labelStyle: AppTypography.tabBarStyle(context),
          indicator: MaterialIndicator(
              color: AppColors.primaryColor,
              height: 2,
              bottomLeftRadius: 5,
              bottomRightRadius: 5),
          tabs: [
            Tab(
              child: Align(
                  child: Text('Restaurantes'), alignment: Alignment.centerLeft),
            ),
            Tab(
              child: Align(
                  child: Text('Mercados'), alignment: Alignment.centerLeft),
            ),
          ]),
    );
  }
}
