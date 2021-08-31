import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_icons.dart';

class BottomNavigatorComponent extends StatelessWidget {
  final List<BottomNavigatorItemComponent> items;
  final int currentIndex;

  BottomNavigatorComponent({required this.items, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: items,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom,
          )
        ],
      ),
    );
  }
}

class BottomNavigatorItemComponent extends StatelessWidget {
  final String? label;
  final String? activeIcon;
  final String? icon;
  final bool isActive;

  BottomNavigatorItemComponent(
      {this.label, this.activeIcon, this.icon, this.isActive = false});

  BottomNavigatorItemComponent copyWith(
      {String? label, String? activeIcon, String? icon, bool? isActive}) {
    return BottomNavigatorItemComponent(
      activeIcon: activeIcon ?? this.activeIcon,
      icon: icon ?? this.icon,
      isActive: isActive ?? this.isActive,
      label: label ?? this.label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          AppIcon(isActive ? activeIcon : icon),
          Text(label ?? 'Not found'),
        ],
      ),
    );
  }
}
