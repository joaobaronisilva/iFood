import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_images.dart';
import 'package:ifood/core/theme/app_typography.dart';
import 'package:ifood/models/category.dart';

class CategoryItemComponent extends StatelessWidget {
  final Category category;

  CategoryItemComponent(this.category);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          category.picture,
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(category.name,
              style: AppTypography.small(context)
                  ?.copyWith(color: AppColors.grey)),
        ),
      ],
    );
  }
}
