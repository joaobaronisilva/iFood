import 'package:flutter/material.dart';
import 'package:ifood/views/content/components/header_local_component.dart';

import 'components/bottom_navigator_component.dart';
import 'components/content_tab_bar_component.dart';

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
        Expanded(
          child: Column(
            children: [
              HeaderLocationComponent(
                location: 'Avenida 22, 1511',
              ),
              ContentTabBarComponent(
                controller: tabController,
                onTap: (index) {},
              )
            ],
          ),
        ),
        BottomNavigatorComponent()
      ],
    ));
  }
}
