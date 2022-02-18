import 'package:afon_app/src/core/presentation/components/mount_scaffold.dart';
import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/core/presentation/widgets/buttons/button_small.dart';
import 'package:afon_app/src/core/presentation/widgets/card/card_background.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../first.dart';

class FirstPage extends StatefulWidget {
  static const id = '/first';
  final bool first;
  FirstPage({required this.first});

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MountScreen(
      child: BlocBuilder<FirstBloc, FirstState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AfonTheme.transparent,
            body: CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top + 10,
                          left: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AfonDictionary.firstPageTitle,
                            style: AfonTextStyle.rossikaHeading1(
                                color: AfonTheme.darkBrown),
                          ),
                          if (!widget.first)
                            GestureDetector(
                              onTap: () {
                                BlocProvider.of<FirstBloc>(context)
                                    .add(FirstEvent.toClose());
                              },
                              child: Container(
                                margin: SizeFirstPageItem.marginButtonClose,
                                color: AfonTheme.transparent,
                                child: Icon(
                                  AfonIcons.x,
                                  size: SizeFirstPageItem.sizeIconClose,
                                  color: AfonTheme.darkBrown,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    CardBackgroundWidget(
                      margin: SizeFirstPageItem.margin,
                      color: AfonTheme.accentGreen,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: SizeFirstPageItem.paddingNewsImage,
                                child: Image.asset(
                                  AfonImages.elderImageState,
                                  width: SizeFirstPageItem.widthNewsImage,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding:
                                          SizeFirstPageItem.paddingNewsTitle,
                                      child: Text(
                                        'Заголовок новости в две строки тестовый набор',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: AfonTextStyle.rossikaHeading2(
                                            color: AfonTheme.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        AfonDictionary.firstPageText,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 4,
                                        style: AfonTextStyle.asketTextNarrow(
                                            color: AfonTheme.white),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    CardBackgroundWidget(
                      onTap: () {
                        BlocProvider.of<FirstBloc>(context)
                            .add(FirstEvent.toHome());
                      },
                      margin: SizeFirstPageItem.margin,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(AfonImages.firstPageItem),
                          Container(
                            margin: SizeFirstPageItem.marginTitle,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              AfonDictionary.firstPageItemTitleState
                                  .toUpperCase(),
                              style: AfonTextStyle.eposHeadline4(
                                  color: AfonTheme.darkBrown),
                            ),
                          ),
                          Text(
                            AfonDictionary.firstPageItemDescriptionState,
                            style: AfonTextStyle.asketTextSmall(
                                color: AfonTheme.darkBrown),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            margin: SizeFirstPageItem.marginButton,
                            child: ButtonSmall(
                              text: AfonDictionary.firstPageItemButtonState,
                            ),
                          ),
                        ],
                      ),
                    ),
                    FirstPageScrollBoxWidget(),
                    Padding(
                      padding: SizeBottomImageEndPage.padding,
                      child: Image.asset(
                        AfonImages.endImageInFirst,
                        height: SizeBottomImageEndPage.heightImage,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).padding.bottom)),
                  ],
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
