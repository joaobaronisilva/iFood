import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String pathIcons = 'assets/icons/';

class AppIcons {
  static const arrowDown = pathIcons + '${pathIcons}arrow_down.svg';
}

class AppIcon extends StatelessWidget {
  final String icon;
  AppIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon);
  }
}
