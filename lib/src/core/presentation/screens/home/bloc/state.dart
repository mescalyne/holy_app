import 'package:afon_app/src/core/presentation/entities/bottom_menu_data.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/resources/dictionary.dart';
import 'package:afon_app/src/resources/icons.dart';

class HomeState {
  ScreenStatus currentStatus;
  HomeScreen currentScreen;

  HomeState({
    this.currentStatus = ScreenStatus.view,
    this.currentScreen = HomeScreen.main,
  });

  HomeState copyWith({
    ScreenStatus? currentStatus,
    HomeScreen? currentScreen,
  }) =>
      HomeState(
        currentStatus: currentStatus ?? this.currentStatus,
        currentScreen: currentScreen ?? this.currentScreen,
      );

  List<BottomMenuData> bottomMenuList = [
    BottomMenuData(
      icon: AfonIcons.home,
      title: AfonDictionary.bottomNavigationMenuMain,
      name: HomeScreen.main,
    ),
    BottomMenuData(
      icon: AfonIcons.users,
      title: AfonDictionary.bottomNavigationMenuElders,
      name: HomeScreen.elders,
    ),
    BottomMenuData(
      icon: AfonIcons.search,
      title: AfonDictionary.bottomNavigationMenuSearch,
      name: HomeScreen.search,
    ),
    BottomMenuData(
      icon: AfonIcons.heart_empty,
      title: AfonDictionary.bottomNavigationMenuFavourites,
      name: HomeScreen.favourites,
    ),
    BottomMenuData(
      icon: AfonIcons.settings,
      title: AfonDictionary.bottomNavigationMenuSetting,
      name: HomeScreen.setting,
    ),
  ];
}
