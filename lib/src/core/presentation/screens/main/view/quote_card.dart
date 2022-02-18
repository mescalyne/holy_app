import 'package:afon_app/src/core/domain/entities/quote.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/main/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/screens/main/bloc/event.dart';
import 'package:afon_app/src/extensions/TextStyle.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';

class QuotesHomeCard extends StatelessWidget {
  final QuoteDto quote;
  QuotesHomeCard({
    required this.quote,
    Key? key,
  }) : super(key: key);

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

    return InkWell(
      onTap: () =>
          BlocProvider.of<MainBloc>(context).add(MainEvent.toStoryPage(quote)),
      child: Container(
        padding: paddingContent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quote.date.toDateString,
              style: AfonTextStyle.asketTextSmall(color: AfonTheme.darkBrown),
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
                                  AfonDictionary.elderType,
                                  textAlign: TextAlign.start,
                                  style: AfonTextStyle.eposHeadline7(),
                                ),
                                Text(
                                  quote.authorId.toString(),//TODO взять имя старца из Hive
                                  style: AfonTextStyle.eposHeadline5(),
                                ),
                                Container(
                                  height: heightSpace,
                                ),
                                Text(
                                  quote.quoteText,
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
                        AfonDictionary.elderTitle1,
                        textAlign: TextAlign.left,
                        style: AfonTextStyle.eposHeadline5(),
                      ),
                    ),
                    Container(
                      height: heightSpace,
                    ),
                    Text(
                      AfonDictionary.textQoute,
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
      ),
    );
  }
}
