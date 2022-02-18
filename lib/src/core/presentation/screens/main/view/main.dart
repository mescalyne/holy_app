import 'package:afon_app/src/core/domain/entities/quote.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/main/main.dart';
import 'package:afon_app/src/core/presentation/screens/main/view/quote_card.dart';
import 'package:afon_app/src/core/presentation/widgets/appBars/appBar_mount_picture.dart';
import 'package:afon_app/src/core/presentation/widgets/loading_widget.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  static const id = '/main';
  const MainPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: BlocBuilder<MainBloc, MainState>(builder: (context, state) {
          switch (state.currentStatus) {
            case ScreenStatus.view:
              return CustomScrollView(slivers: [
                AppBarMountPicture(
                  title: AfonDictionary.firstPageItemTitleState,
                  onPresAction: _onPressMenu,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => QuotesHomeCard(
                      quote: state.quotesList[index],
                    ),
                    childCount: state.quotesList.length,
                  ),
                ),
              ]);
            default:
              return Center(
                child: LoadingWidget(),
              );
          }
        }));
  }

  void _onPressMenu() {
    BlocProvider.of<MainBloc>(context).add(MainEvent.toFirstPage());
  }
}

class QuotesHomeCard extends StatelessWidget {
  final QuoteDto quote;
  const QuotesHomeCard({required this.quote, Key? key}) : super(key: key);

  static const paddingContent =
      EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0, bottom: 10.0);
  static const paddingCard = EdgeInsets.only(top: 5.0);
  static const marginCard = EdgeInsets.all(15.0);
  static const heightOfContent = 260.0;
  static const heightOfReverend = 105.0;
  static const heightSpace = 10.0;
  static const groupPaddingCaption = 175.0;
  static const groupPaddingDivider = 175.0;
  static const heightDividerContainer = 45.0;
  static const heightDivider = 10.0;

  @override
  Widget build(BuildContext context) {
    var widthOfCaption =
        MediaQuery.of(context).size.width - groupPaddingCaption;
    var widthOfDivider =
        MediaQuery.of(context).size.width - groupPaddingDivider;
    return Container(
      padding: paddingContent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '17 августа 2021',
            style: AfonTextStyle.asketTextSmall(),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: heightOfContent,
            padding: paddingCard,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AfonTheme.cards),
            child: Container(
              padding: marginCard,
              child: Column(
                children: [
                  Container(
                    height: heightOfReverend,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AfonImages.reverendImage),
                        Container(
                          width: widthOfCaption,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AfonDictionary.reverend,
                                textAlign: TextAlign.start,
                                style: AfonTextStyle.eposHeadline7(),
                              ),
                              Text(
                                'Паисий Святогорец',
                                style: AfonTextStyle.eposHeadline5(),
                              ),
                              Container(
                                height: heightSpace,
                              ),
                              Text(
                                AfonDictionary.firstPageText,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: AfonTextStyle.asketTextSmall(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: heightDividerContainer,
                    child: Image.asset(
                      AfonImages.holyDivider,
                      width: widthOfDivider,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Паисий Святогорец',
                      textAlign: TextAlign.left,
                      style: AfonTextStyle.eposHeadline5(),
                    ),
                  ),
                  Container(
                    height: heightSpace,
                  ),
                  Text(
                    'С богословской точки зрения Святая Гора – это по преимуществу место святости. С социальной, святогорское государство – это древнейшая...',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: AfonTextStyle.asketTextSmall(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
