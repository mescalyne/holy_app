import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({Key? key}) : super(key: key);

  static const paddingContent =
      EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0, bottom: 10.0);
  static const paddingCard = EdgeInsets.only(top: 5.0);
  static const marginCard = EdgeInsets.all(15.0);
  static const heightOfContent = 135.0;
  static const heightOfReverend = 105.0;
  static const heightSpace = 10.0;
  static const groupPaddingCaption = 175.0;

  @override
  Widget build(BuildContext context) {
    var widthOfCaption =
        MediaQuery.of(context).size.width - groupPaddingCaption;
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
            margin: paddingCard,
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
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
