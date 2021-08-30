import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_icons.dart';

class HeaderLocationComponent extends StatelessWidget {
  final String location;

  HeaderLocationComponent({required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text('Rua das Flores do Campo, 10'),
                  AppIcon(
                    AppIcons.arrowDown,
                    size: Size(20, 20),
                    color: AppColors.primaryColor,
                  )
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
