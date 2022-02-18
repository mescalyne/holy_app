import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouritesTabBarWidget extends StatelessWidget {
  final TabController tabController;
  FavouritesTabBarWidget({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _SliverFavouritesTabBarDelegate(tabController: tabController),
      pinned: true,
    );
  }
}

class _SliverFavouritesTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabController tabController;
  _SliverFavouritesTabBarDelegate({required this.tabController});

  @override
  double get minExtent => SizeFavouritesPageTapBar.extent;
  @override
  double get maxExtent => SizeFavouritesPageTapBar.extent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 55,
      color: AfonTheme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: SizeFavouritesPageTapBar.heightTabBar,
            child: Column(
              children: [
                Container(
                  width: 300,
                  child: _tabBar(context),
                ),
                Divider(
                  height: 1,
                  color: AfonTheme.lightGreen,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabBar(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.only(left: 24, right: 23),
      labelPadding: EdgeInsets.only(left: 10, right: 10),
      controller: tabController,
      unselectedLabelColor: AfonTheme.lightBrown,
      labelColor: AfonTheme.darkBrown,
      labelStyle: AfonTextStyle.asketTextRegular(color: AfonTheme.darkBrown),
      unselectedLabelStyle:
          AfonTextStyle.asketTextRegular(color: AfonTheme.lightBrown),
      indicatorColor: AfonTheme.accentGreen,
      indicatorWeight: 4,
      indicator: BoxDecoration(
          color: AfonTheme.accentGreen,
          borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
      indicatorPadding: EdgeInsets.only(top: 46),
      indicatorSize: TabBarIndicatorSize.label,
      tabs: [
        Tab(
          icon: Container(
            width: SizeFavouritesPageTapBar.widthTabBarItem,
            child:
                Center(child: Text(AfonDictionary.favouritesTabBarItemQuotes)),
          ),
        ),
        Tab(
          icon: Container(
            width: SizeFavouritesPageTapBar.widthTabBarItem,
            child:
                Center(child: Text(AfonDictionary.favouritesTabBarItemStories)),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(_SliverFavouritesTabBarDelegate oldDelegate) => true;
}
