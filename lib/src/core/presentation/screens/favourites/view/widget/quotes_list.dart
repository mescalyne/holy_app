import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';

import '../../favourites.dart';

class FavouritesContentQuotesListWidget extends StatelessWidget {
  final List<QuoteFavouriteExample> quotes;

  FavouritesContentQuotesListWidget({required this.quotes});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
          bottom: 10 + MediaQuery.of(context).padding.bottom),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quotes[index].date.toDateString,
                  style:
                      AfonTextStyle.asketTextSmall(color: AfonTheme.darkBrown),
                  maxLines: 1,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AfonTheme.cards,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [AfonTheme.shadows.elderAppBarContent],
                  ),
                  margin: EdgeInsets.only(top: 5),
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        quotes[index].image,
                        width: 80,
                        height: 105,
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              quotes[index].rank,
                              style: AfonTextStyle.eposHeadline7(
                                  color: AfonTheme.darkBrown),
                              maxLines: 1,
                            ),
                            Text(
                              quotes[index].name,
                              style: AfonTextStyle.eposHeadline5(
                                  color: AfonTheme.darkBrown),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 10),
                            Text(
                              quotes[index].text,
                              style: AfonTextStyle.asketTextSmall(
                                  color: AfonTheme.darkBrown),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
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
          childCount: quotes.length,
        ),
      ),
    );
  }
}
