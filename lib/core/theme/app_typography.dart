import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTypography {
  static TextStyle? bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1;
  }

  static TextStyle? bodyTextBold(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
          fontWeight: FontWeight.w500,
        );
  }

  static TextStyle? tabBarStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
          fontWeight: FontWeight.w700,
          color: AppColors.primaryColor,
        );
  }

  static TextStyle? filterTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
        fontWeight: FontWeight.normal,
        color: AppColors.primaryColor,
        fontSize: 13);
  }

  static TextStyle? small(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 12);
  }

  static TextStyle? localTextStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1
        ?.copyWith(fontWeight: FontWeight.w700, fontSize: 13);
  }
}
