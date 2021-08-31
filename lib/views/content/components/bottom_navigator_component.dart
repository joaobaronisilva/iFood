import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_icons.dart';

class BottomNavigatorComponent extends StatelessWidget {
  final List<BottomNavigatorItemComponent> items;
  final int currentIndex;
  final Function(int) onTap;

  BottomNavigatorComponent(
      {required this.items, this.currentIndex = 0, required this.onTap});

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
              children: items
                  .map((e) => e.copyWith(
                        isActive: items.indexOf(e) == currentIndex,
                        onTap: () => onTap(items.indexOf(e)),
                      ))
                  .toList(),
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
  final Function()? onTap;

  BottomNavigatorItemComponent(
      {this.label,
      this.activeIcon,
      this.icon,
      this.isActive = false,
      this.onTap});

  BottomNavigatorItemComponent copyWith({
    String? label,
    String? activeIcon,
    String? icon,
    bool? isActive,
    Function()? onTap,
  }) {
    return BottomNavigatorItemComponent(
      activeIcon: activeIcon ?? this.activeIcon,
      icon: icon ?? this.icon,
      isActive: isActive ?? this.isActive,
      label: label ?? this.label,
      onTap: onTap ?? this.onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            AppIcon(isActive ? activeIcon : icon),
            Text(label ?? 'Not found'),
          ],
        ),
      ),
    );
  }
}
