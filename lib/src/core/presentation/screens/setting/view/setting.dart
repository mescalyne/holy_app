import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/setting/setting.dart';
import 'package:afon_app/src/core/presentation/widgets/appBars/appBar_mount_picture.dart';
import 'package:afon_app/src/core/presentation/widgets/items/setting_item.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatefulWidget {
  static const id = '/setting';
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocConsumer<SettingBloc, SettingState>(
        listener: (context, state) {},
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              AppBarMountPicture(
                title: AfonDictionary.settingPageTitle,
                onPresAction: _onPressMenu,
                asset: AfonImages.settingAppBar,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(height: 10),
                    SettingItemWidget(
                      onTap: () {
                        Log.info('to Notify');
                        //TODO: to setting Notify
                      },
                      title: AfonDictionary.settingItemNotify,
                      icon: AfonIcons.flower,
                      value: state.notify
                          ? AfonDictionary.settingNotifyOn
                          : AfonDictionary.settingNotifyOff,
                      itemType: SettingItemType.valueArrow,
                      topShadowShow: true,
                    ),
                    SettingItemWidget(
                      onTap: () {
                        Log.info('to Language');
                        //TODO: to setting Language
                      },
                      title: AfonDictionary.settingItemLanguage,
                      icon: AfonIcons.message_circle,
                      value: state.language,
                      itemType: SettingItemType.valueArrow,
                    ),
                    SettingItemWidget(
                      title: AfonDictionary.settingItemVisual,
                      icon: AfonIcons.zoom_in,
                      itemType: SettingItemType.toggle,
                      toggleValue: state.visualToggleValue,
                      onToggle: (bool value) {
                        BlocProvider.of<SettingBloc>(context)
                            .add(SettingEvent.onVisualToggle(value));
                      },
                    ),
                    SizedBox(height: 10),
                    SettingItemWidget(
                      onTap: () {
                        Log.info('to About');
                        //TODO: to setting About
                      },
                      title: AfonDictionary.settingItemAbout,
                      icon: AfonIcons.info,
                      itemType: SettingItemType.notValueArrow,
                      topShadowShow: true,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _onPressMenu() {
    BlocProvider.of<SettingBloc>(context).add(SettingEvent.toFirstPage());
  }
}
