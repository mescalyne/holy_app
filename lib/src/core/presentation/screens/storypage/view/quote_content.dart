import 'package:afon_app/src/core/domain/entities/quote.dart';
import 'package:afon_app/src/extensions/DateTime.dart';
import 'package:afon_app/src/extensions/TextStyle.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuoteContent extends StatelessWidget {
  final QuoteDto quote;
  const QuoteContent({
    required this.quote,
    Key? key,
  }) : super(key: key);

  static const paddingPage =
      EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0, bottom: 32.0);
  static const paddingContent =
      EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 30);

  static const heightImageContainer = 115.0;
  static const widthImageContainer = 95.0;
  static const widthImage = 80.0;

  static const heightLikeContainer = 24.11;
  static const heightLikeIcon = 22.11;

  static const columnPadding = 175.0;
  static const containerHeight = 20.0;
  static const spaceHeight = 10.0;
  static const paddingButton =
      EdgeInsets.only(top: 2, bottom: 3, left: 10, right: 10);

  static const mainTextPadding = EdgeInsets.only(top: 20, bottom: 22);
  static const bottomImageContainerHeight = 107.0;
  static const bottomImageHeight = 70.0;

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: paddingPage,
        child: Wrap(
          children: [
            Container(
              padding: paddingContent,
              decoration: BoxDecoration(
                color: AfonTheme.cards,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [AfonTheme.shadows.cardBackground],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: heightImageContainer,
                        width: widthImageContainer,
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          AfonImages.reverendImage,
                          width: widthImage,
                        ),
                      ),
                      Container(
                        width: widthScreen - columnPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(quote.date.toDateString,
                                    style: AfonTextStyle.asketTextSmall()),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  height: heightLikeContainer,
                                  child: Icon(
                                    AfonIcons.heart_empty,
                                    size: heightLikeIcon,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: containerHeight,
                            ),
                            Container(
                              height: containerHeight,
                              child: Text(
                                AfonDictionary.reverend,
                                style: AfonTextStyle.eposHeadline6(
                                  color: AfonTheme.darkBrown,
                                ),
                              ),
                            ),
                            Container(
                              height: containerHeight,
                              child: Text(
                                quote.authorId
                                    .toString(), //TODO Взять имя старца из HIve
                                style: AfonTextStyle.eposHeadline4(
                                  color: AfonTheme.darkBrown,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: spaceHeight,
                            ),
                            Container(
                              height: containerHeight,
                              padding: paddingButton,
                              decoration: BoxDecoration(
                                color: AfonTheme.accentGreen,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                AfonDictionary.qouteCount,
                                style: AfonTextStyle.asketSmallCaps(
                                  color: AfonTheme.white,
                                  fontSize: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: mainTextPadding,
                    child: Text(quote.quoteText,
                        style: AfonTextStyle.asketTextRegular(
                            color: AfonTheme.darkBrown)),
                  ),
                  Text(
                    AfonDictionary.tag1.toUpperCase(),
                    style: AfonTextStyle.asketCapsUnderlined(
                        color: AfonTheme.lightBrown),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: bottomImageContainerHeight,
                    child: Image.asset(
                      AfonImages.birds,
                      height: bottomImageHeight,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
