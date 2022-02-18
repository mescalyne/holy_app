import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/core/presentation/entities/bottom_menu_data.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/home/home.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AfonBottomNavigationBar extends StatefulWidget {
  final int activeItem;
  final List<BottomMenuData> listMenu;

  const AfonBottomNavigationBar({
    Key? key,
    required this.activeItem,
    required this.listMenu,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AfonBottomNavigationBarState();
}

class _AfonBottomNavigationBarState extends State<AfonBottomNavigationBar> {
  void _onItemTapped(HomeScreen screen) {
    BlocProvider.of<HomeBloc>(context).add(
      OnBottomNavigationItemClickedEvent(screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeBottomNavigationMenu.height,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      decoration: BoxDecoration(
          color: AfonTheme.backgroundColor,
          boxShadow: [AfonTheme.shadows.bottomNavigationMenu]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _itemsBuild(),
      ),
    );
  }

  List<Widget> _itemsBuild() {
    List<Widget> items = [];
    for (var item in widget.listMenu) {
      items.add(_itemWidget(
          item, (widget.activeItem == widget.listMenu.indexOf(item))));
    }
    return items;
  }

  Widget _itemWidget(BottomMenuData item, bool select) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(item.name);
      },
      child: Container(
        width: SizeBottomNavigationMenu.widthItem,
        color: AfonTheme.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              item.icon,
              size: SizeBottomNavigationMenu.sizeItemIcon,
              color: select ? AfonTheme.accentGreen : AfonTheme.lightBrown,
            ),
            Text(
              item.title,
              style: AfonTextStyle.asketTextSmall(
                  color: select ? AfonTheme.accentGreen : AfonTheme.lightBrown),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
