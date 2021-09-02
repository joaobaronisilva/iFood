import 'package:flutter/material.dart';
import 'package:ifood/controllers/content_controller.dart';
import 'package:ifood/core/theme/app_colors.dart';
import 'package:ifood/core/theme/app_icons.dart';
import 'package:ifood/models/category.dart';
import 'package:ifood/views/content/components/header_local_component.dart';

import 'components/bottom_navigator_component.dart';
import 'components/category_item_component.dart';
import 'components/content_tab_bar_component.dart';
import 'components/filters_component.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  final controller = ContentController();
  List<Category> categorys = [];

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    categorys = controller.getCategorys();
    super.initState();
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: NestedScrollView(
              physics: BouncingScrollPhysics(),
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  HeaderLocationComponent(
                    location: 'Avenida 22, 1511',
                  ),
                  ContentTabBarComponent(
                    controller: tabController,
                    onTap: (index) {},
                  ),
                  FiltersComponent(),
                ];
              },
              body: Column(
                children: [
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async => await Future.value(),
                      child: CustomScrollView(
                        physics: BouncingScrollPhysics(),
                        slivers: [
                          SliverToBoxAdapter(
                            child: SizedBox(
                                height: 86,
                                child: ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  itemCount: categorys.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.only(
                                        left: index == 0 ? 16 : 0,
                                        right: index == categorys.length - 1
                                            ? 16
                                            : 8),
                                    child:
                                        CategoryItemComponent(categorys[index]),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  BottomNavigatorComponent(
                    currentIndex: _currentIndex,
                    onTap: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    items: [
                      BottomNavigatorItemComponent(
                        activeIcon: AppIcons.homeActive,
                        icon: AppIcons.home,
                        label: 'Início',
                      ),
                      BottomNavigatorItemComponent(
                        activeIcon: AppIcons.searchActive,
                        icon: AppIcons.search,
                        label: 'Busca',
                      ),
                      BottomNavigatorItemComponent(
                        activeIcon: AppIcons.ordersActive,
                        icon: AppIcons.orders,
                        label: 'Pedidos',
                      ),
                      BottomNavigatorItemComponent(
                        activeIcon: AppIcons.profileActive,
                        icon: AppIcons.profile,
                        label: 'Perfil',
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
