import 'package:flutter/cupertino.dart';

class AfonTheme {
  static final Color darkBrown = Color(0xFF34291D);
  static final Color lightBrown = Color(0xFF868483);
  static final Color accentGreen = Color(0xFF5D7E62);
  static final Color lightGreen = Color(0xFFBBC6B8);
  static final Color backgroundColor = Color(0xFFD5D8CB);
  static final Color cards = Color(0xFFF6F5F0);
  static final Color white = Color(0xFFFFFFFF);
  static final Color textColor = Color(0xFF1E2022);
  static final Color textColorGray = Color(0xFF828282);
  static final Color black = Color(0xFF000000);
  static final Color error = Color(0xFFFF0000);
  static final Color transparent = Color(0x00FFFFFF);
  static final Color lightBorderline = Color(0xFFBBC6B8);

  static final shadows = BoxShadows(
    bottomNavigationMenu: BoxShadow(
      color: black.withOpacity(0.06),
      offset: Offset(0, -1),
    ),
    appBarButtonMenu: BoxShadow(
      color: AfonTheme.backgroundColor.withOpacity(0.8),
      offset: Offset(0, 0),
      spreadRadius: 0.1,
      blurRadius: 10,
    ),
    elderAppBarContent: BoxShadow(
      color: AfonTheme.black.withOpacity(0.05),
      offset: Offset(0, 4),
      blurRadius: 14,
    ),
    cardBackground: BoxShadow(
      color: AfonTheme.black.withOpacity(0.05),
      offset: Offset(0, 4),
      blurRadius: 14,
    ),
    settingItemBottom: BoxShadow(
      color: AfonTheme.black.withOpacity(0.06),
      offset: Offset(0, -1),
      blurRadius: 1,
    ),
    settingItemTop: BoxShadow(
      color: AfonTheme.black.withOpacity(0.06),
      offset: Offset(0, 1),
      blurRadius: 1,
    ),
  );
}

class BoxShadows {
  BoxShadow bottomNavigationMenu;
  BoxShadow appBarButtonMenu;
  BoxShadow elderAppBarContent;
  BoxShadow cardBackground;
  BoxShadow settingItemBottom;
  BoxShadow settingItemTop;

  BoxShadows({
    required this.bottomNavigationMenu,
    required this.appBarButtonMenu,
    required this.elderAppBarContent,
    required this.cardBackground,
    required this.settingItemBottom,
    required this.settingItemTop,
  });
}
