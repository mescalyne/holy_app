import 'package:afon_app/src/core/presentation/screens/elders/elders.dart';
import 'package:afon_app/src/core/presentation/screens/favourites/favourites.dart';
import 'package:afon_app/src/core/presentation/screens/home/home.dart';
import 'package:afon_app/src/core/presentation/screens/main/main.dart';
import 'package:afon_app/src/core/presentation/screens/search/search.dart';
import 'package:afon_app/src/core/presentation/screens/search/view/search_main.dart';
import 'package:afon_app/src/core/presentation/screens/setting/setting.dart';
import 'package:afon_app/src/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  static const id = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            body: IndexedStack(
              index: state.currentScreen.index,
              children: [
                MainPage(),
                EldersPage(),
                SearchPage(),
                FavouritesPage(),
                SettingPage(),
              ],
            ),
            bottomNavigationBar: AfonBottomNavigationBar(
              activeItem: state.currentScreen.index,
              listMenu: state.bottomMenuList,
            ),
          );
        },
      ),
    );
  }
}
