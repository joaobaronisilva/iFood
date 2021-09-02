import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_typography.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class ContentTabBarComponent extends StatelessWidget {
  final TabController? controller;
  final Function(int)? onTap;

  ContentTabBarComponent({this.controller, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        delegate: _ContentTabBarComponentDelegate(
            controller: controller, onTap: onTap));
  }
}

class _ContentTabBarComponentDelegate extends SliverPersistentHeaderDelegate {
  final TabController? controller;
  final Function(int)? onTap;

  _ContentTabBarComponentDelegate({this.controller, this.onTap});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 16, right: (width / 2) - 16),
      child: TabBar(
          labelPadding: EdgeInsets.zero,
          labelColor: AppColors.primaryColor,
          controller: controller,
          onTap: onTap,
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

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
