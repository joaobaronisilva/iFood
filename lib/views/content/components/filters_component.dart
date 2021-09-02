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
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 16),
          FilterItemComponent(
            label: 'Ordenar',
            icon: AppIcons.arrowDown,
          ),
          FilterItemComponent(
            label: 'Pra Retirar',
          ),
          FilterItemComponent(
            label: 'Entrega Grátis',
          ),
          FilterItemComponent(
            label: 'Vale Refeição',
          ),
          FilterItemComponent(
            label: 'Distância',
            icon: AppIcons.arrowDown,
          ),
          FilterItemComponent(
            label: 'Entrega Parceira',
            icon: AppIcons.arrowDown,
          ),
          FilterItemComponent(
            label: 'Filtros',
            icon: AppIcons.arrowDown,
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
      padding: EdgeInsets.only(top: 14, bottom: 12, right: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[200]!),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Text(
                label,
                style: AppTypography.filterTextStyle(context)
                    ?.copyWith(color: Colors.grey[700]),
              ),
              if (icon != '')
                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: AppIcon(
                    icon,
                    size: Size(14, 14),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
