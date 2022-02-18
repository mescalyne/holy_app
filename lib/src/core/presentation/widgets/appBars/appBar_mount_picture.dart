import 'package:afon_app/src/core/presentation/components/mounts_painter.dart';
import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/extensions/TextStyle.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';

class AppBarMountPicture extends StatelessWidget {
  final String title;
  final String asset;
  final Function onPresAction;
  final PreferredSizeWidget? bottom;
  const AppBarMountPicture({
    required this.title,
    required this.onPresAction,
    this.asset = AfonImages.first,
    this.bottom,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      elevation: 0,
      pinned: true,
      leading: null,
      actions: [
        GestureDetector(
          onTap: () => onPresAction(),
          child: Container(
            margin: SizeAppBarMountPicture.marginButtonClose,
            height: SizeAppBarMountPicture.sizeIconShadow,
            width: SizeAppBarMountPicture.sizeIconShadow,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(SizeAppBarMountPicture.sizeIconShadow),
              boxShadow: [AfonTheme.shadows.appBarButtonMenu],
            ),
            child: Icon(
              AfonIcons.menu,
              size: SizeAppBarMountPicture.sizeIconMenu,
              color: AfonTheme.darkBrown,
            ),
          ),
        ),
      ],
      expandedHeight: SizeAppBarMountPicture.height +
          MediaQuery.of(context).padding.top -
          25,
      backgroundColor: AfonTheme.backgroundColor,
      automaticallyImplyLeading: false,
      flexibleSpace: Stack(
        children: [
          FlexibleSpaceBar(
            background: Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).padding.top - 20),
              alignment: Alignment.topCenter,
              child: Image.asset(
                asset,
                fit: BoxFit.fitWidth,
                color: AfonTheme.black,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SecondMount(
                  height: SizeAppBarMountPicture.heightMount,
                  color: AfonTheme.backgroundColor,
                ),
                Container(
                  padding: EdgeInsets.only(left: 25, bottom: 10),
                  child: Text(
                    title,
                    style: AfonTextStyle.rossikaHeading1(),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottom: bottom,
    );
  }
}
