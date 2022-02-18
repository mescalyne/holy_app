import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';

class ElderContentQuotesListWidget extends StatelessWidget {
  final List<QuoteDto> quotes;

  ElderContentQuotesListWidget({required this.quotes});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
              bottom: 10 + MediaQuery.of(context).padding.bottom),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                margin: EdgeInsets.all(10),
                height: SizeElderPageItems.quoteHeightItem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      quotes[index].date.toDateString,
                      style: AfonTextStyle.asketTextSmall(
                          color: AfonTheme.darkBrown),
                      maxLines: 1,
                    ),
                    Container(
                      height: SizeElderPageItems.quoteHeightContainer,
                      decoration: BoxDecoration(
                        color: AfonTheme.cards,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [AfonTheme.shadows.cardBackground],
                      ),
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 25, bottom: 15),
                      child: Text(
                        quotes[index].quoteText,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: AfonTextStyle.asketTextSmall(
                            color: AfonTheme.darkBrown),
                      ),
                    ),
                  ],
                ),
              ),
              childCount: quotes.length,
            ),
          ),
        ),
      ],
    );
  }
}
