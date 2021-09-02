import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_typography.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class FiltersComponent extends StatelessWidget {
  final Function(int)? onTap;

  FiltersComponent({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: true, delegate: _FiltersComponentDelegate(onTap: onTap));
  }
}

class _FiltersComponentDelegate extends SliverPersistentHeaderDelegate {
  final Function(int)? onTap;

  _FiltersComponentDelegate({this.onTap});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: AppColors.primaryColor,
      height: 54,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [],
      ),
    );
  }

  @override
  double get maxExtent => 54;

  @override
  double get minExtent => 54;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class FilterItemComponent extends StatelessWidget {
  const FilterItemComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
