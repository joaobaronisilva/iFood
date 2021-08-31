import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String pathIcons = 'assets/icons/';

class AppIcons {
  static const arrowDown = '${pathIcons}arrow_down.svg';
  static const homeActive = '${pathIcons}bottom/home_active.svg';
}

class AppIcon extends StatelessWidget {
  final String icon;
  final Size? size;
  final Color? color;
  AppIcon(this.icon, {this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size?.height ?? 24,
      width: size?.width ?? 24,
      color: color ?? Colors.black,
    );
  }
}
