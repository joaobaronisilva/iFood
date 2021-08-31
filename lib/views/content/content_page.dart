import 'package:flutter/material.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_typography.dart';
import 'package:ifood/views/content/components/header_local_component.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HeaderLocationComponent(
          location: 'Avenida 22, 1511',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 180),
          child: TabBar(
              labelPadding: EdgeInsets.zero,
              labelColor: AppColors.primaryColor,
              controller: tabController,
              unselectedLabelColor: AppColors.black54,
              labelStyle: AppTypography.bodyText(context)
                  ?.copyWith(color: AppColors.primaryColor),
              indicator: MaterialIndicator(
                  color: AppColors.primaryColor,
                  height: 2,
                  bottomLeftRadius: 5,
                  bottomRightRadius: 5),
              tabs: [
                Tab(
                  child: Align(
                      child: Text('Restaurantes'),
                      alignment: Alignment.centerLeft),
                ),
                Tab(
                  child: Align(
                      child: Text('Mercados'), alignment: Alignment.centerLeft),
                ),
              ]),
        )
      ],
    ));
  }
}
