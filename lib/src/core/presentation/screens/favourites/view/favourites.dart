import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/favourites/favourites.dart';
import 'package:afon_app/src/core/presentation/widgets/appBars/appBar_mount_picture.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesPage extends StatefulWidget {
  static const id = '/favourites';
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocConsumer<FavouritesBloc, FavouritesState>(
        listener: (context, state) {
          if (state.currentStatus == ScreenStatus.error) {
            //TODO modal error
            BlocProvider.of<FavouritesBloc>(context)
                .add(FavouritesEvent.onError());
          }
        },
        builder: (BuildContext context, FavouritesState state) {
          return NestedScrollView(
            headerSliverBuilder: (_, __) => [
              AppBarMountPicture(
                title: AfonDictionary.favouritesPageTitle,
                onPresAction: _onPressMenu,
                asset: AfonImages.favouritesAppBar,
              ),
              FavouritesTabBarWidget(tabController: _tabController),
            ],
            body: TabBarView(
              controller: _tabController,
              children: [
                Tab(child: FavouritesContentQuotes()),
                Tab(child: FavouritesContentStories()),
              ],
            ),
          );
        },
      ),
    );
  }

  void _onPressMenu() {
    BlocProvider.of<FavouritesBloc>(context).add(FavouritesEvent.toFirstPage());
  }
}
