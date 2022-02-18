import 'package:afon_app/src/core/presentation/screens/favourites/bloc/data_source.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';

class FavouritesContentStoriesListWidget extends StatelessWidget {
  final List<StoriesFavouriteExample> stories;

  FavouritesContentStoriesListWidget({required this.stories});

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
                  stories[index].date.toDateString,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stories[index].title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AfonTextStyle.eposHeadline5(
                            color: AfonTheme.darkBrown),
                      ),
                      SizedBox(height: 10),
                      Text(
                        stories[index].text,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: AfonTextStyle.asketTextSmall(
                            color: AfonTheme.darkBrown),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          childCount: stories.length,
        ),
      ),
    );
  }
}
