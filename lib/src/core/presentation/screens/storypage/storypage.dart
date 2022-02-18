import 'package:afon_app/src/core/presentation/components/mount_scaffold.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/storypage/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/screens/storypage/bloc/state.dart';
import 'package:afon_app/src/core/presentation/screens/storypage/view/quote_content.dart';
import 'package:afon_app/src/core/presentation/screens/storypage/view/story_content.dart';
import 'package:afon_app/src/core/presentation/widgets/loading_widget.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);
  static const id = '/storypage';

  static const iconHeight = 25.0;
  static const iconBackHeight = 21.65;
  static const iconBackWidth = 44.75;
  static const iconWidth = 24.99;
  static const toolbarHeight = 45.0;
  static const preferredSize = Size(double.infinity, 55.0);
  static const labelPadding = EdgeInsets.only(bottom: 12.0);
  static const tabBarPadding =
      EdgeInsets.only(right: 46.5, left: 46.5, bottom: 0);
  static const indicatorPadding = EdgeInsets.only(top: 36);

  @override
  Widget build(BuildContext context) {
    return MountScreen(
      child:
          BlocBuilder<StorypageBloc, StorypageState>(builder: (context, state) {
        switch (state.currentStatus) {
          case ScreenStatus.loading:
            return Center(
              child: LoadingWidget(),
            );
          case ScreenStatus.view:
            return DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                    statusBarIconBrightness: Brightness.dark,
                    statusBarBrightness: Brightness.light,
                  ),
                  elevation: 0.0,
                  titleSpacing: 0.0,
                  toolbarHeight: toolbarHeight,
                  backgroundColor: Colors.transparent,
                  automaticallyImplyLeading: false,
                  title: Stack(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => context
                                  .read<RouterBloc>()
                                  .add(RouterEvent.pop()),
                              child: Container(
                                child: Icon(
                                  AfonIcons.chevron_left,
                                  size: iconBackHeight,
                                  color: AfonTheme.darkBrown,
                                ),
                                width: iconBackWidth,
                                alignment: Alignment.topRight,
                              ),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {}, //TODO showModalBottomSheet
                                    child: Container(
                                      child: Icon(
                                        AfonIcons.more_vertical,
                                        size: iconHeight,
                                        color: AfonTheme.darkBrown,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: iconWidth,
                                  ),
                                  InkWell(
                                    onTap: () {}, //TODO showModalBottomSheet
                                    child: Container(
                                      child: Icon(
                                        AfonIcons.share,
                                        size: iconHeight,
                                        color: AfonTheme.darkBrown,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: iconWidth,
                                  ),
                                ]),
                          ]),
                      Center(
                        child: Text(
                          state.quote.date.toDateString,
                          style: AfonTextStyle.rossikaHeading2(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  bottom: PreferredSize(
                    preferredSize: preferredSize,
                    child: Column(
                      children: [
                        TabBar(
                          padding: tabBarPadding,
                          labelPadding: labelPadding,
                          labelStyle: AfonTextStyle.asketTextRegular(),
                          labelColor: AfonTheme.darkBrown,
                          unselectedLabelColor: AfonTheme.lightBrown,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 4,
                          indicator: BoxDecoration(
                              color: AfonTheme.accentGreen,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(5))),
                          indicatorPadding: indicatorPadding,
                          tabs: [
                            Container(
                              child: Text(
                                AfonDictionary.storyPageQuote,
                              ),
                            ),
                            Container(
                              child: Text(
                                AfonDictionary.storyPageStory,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: AfonTheme.lightGreen,
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  children: [
                    QuoteContent(
                      quote: state.quote,
                    ),
                    StoryContent(),
                  ],
                ),
              ),
            );
          default:
            return Center(
              child: Text('Ошибка'), //TODO дизайн ошибок
            );
        }
      }),
    );
  }
}
