import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingItemWidget extends StatelessWidget {
  final IconData? icon;
  final SettingItemType itemType;
  final String title;
  final String? value;
  final Function? onTap;
  final bool toggleValue;
  final bool topShadowShow;
  final Function(bool value)? onToggle;

  SettingItemWidget({
    this.icon,
    required this.title,
    required this.itemType,
    this.value,
    this.onTap,
    this.onToggle,
    this.toggleValue = false,
    this.topShadowShow = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => (onTap != null) ? onTap!() : null,
      child: Container(
        height: SizeSettingItemWidget.height,
        padding: SizeSettingItemWidget.padding,
        decoration: BoxDecoration(
          color: AfonTheme.cards,
          boxShadow: [
            AfonTheme.shadows.settingItemBottom,
            if (topShadowShow) AfonTheme.shadows.settingItemTop,
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (icon != null)
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: Icon(
                  icon,
                  size: 25.0,
                  color: AfonTheme.darkBrown,
                ),
              ),
            Expanded(
              child: Text(
                title,
                style:
                    AfonTextStyle.asketTextRegular(color: AfonTheme.darkBrown),
                textAlign: TextAlign.left,
                maxLines: 1,
              ),
            ),
            if (itemType == SettingItemType.toggle)
              Container(
                alignment: Alignment.centerRight,
                child: FlutterSwitch(
                  onToggle: (bool value) =>
                      (onToggle != null) ? onToggle!(value) : null,
                  value: toggleValue,
                  width: 60.0,
                  height: 35.0,
                  toggleSize: 31.0,
                  toggleColor: AfonTheme.white,
                  borderRadius: 18.0,
                  activeColor: AfonTheme.accentGreen,
                  inactiveColor: AfonTheme.backgroundColor,
                ),
              ),
            if (itemType != SettingItemType.none &&
                itemType != SettingItemType.check)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (itemType == SettingItemType.valueActive ||
                      itemType == SettingItemType.valueArrow ||
                      itemType == SettingItemType.valueInactive ||
                      itemType == SettingItemType.valueNotArrow)
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        value ?? '',
                        style: AfonTextStyle.asketTextSmall(
                            color: (itemType == SettingItemType.valueActive)
                                ? AfonTheme.darkBrown
                                : AfonTheme.textColorGray),
                        maxLines: 1,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  if (itemType != SettingItemType.valueInactive &&
                      itemType != SettingItemType.valueActive &&
                      itemType != SettingItemType.toggle)
                    Container(
                      width: 20.0,
                      child: (itemType != SettingItemType.valueNotArrow)
                          ? Icon(
                              AfonIcons.chevron_right,
                              size: 15,
                            )
                          : Container(),
                    ),
                ],
              ),
            if (itemType == SettingItemType.check)
              Container(
                child: Icon(
                  AfonIcons.check,
                  size: 25,
                  color: AfonTheme.darkBrown,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
