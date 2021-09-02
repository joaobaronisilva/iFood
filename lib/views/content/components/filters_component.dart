import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_icons.dart';
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
      color: AppColors.white,
      height: 54,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 16),
          FilterItemComponent(
            label: 'Ordenar',
          ),
          FilterItemComponent(
            label: 'Ordenar',
          ),
          FilterItemComponent(
            label: 'Ordenar',
          ),
          SizedBox(width: 16),
        ],
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
  final String label;
  final String? icon;

  FilterItemComponent({required this.label, this.icon = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12, bottom: 12, right: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32), color: Colors.blue),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Text(
                label,
                style: TextStyle(color: Colors.grey[700]),
              ),
              if (icon != '') AppIcon(icon)
            ],
          ),
        ),
      ),
    );
  }
}
