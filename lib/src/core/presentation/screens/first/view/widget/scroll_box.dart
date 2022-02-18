import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/core/presentation/screens/first/first.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstPageScrollBoxWidget extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  double _newPosition(ScrollNotification scrollInfo, BuildContext context) {
    var pixels = scrollInfo.metrics.pixels;
    var maxPixels = scrollInfo.metrics.maxScrollExtent;
    var maxScrollbarPosition = MediaQuery.of(context).size.width -
        50 -
        SizeFirstPageItem.widthScrollbar;
    double newPosition = maxScrollbarPosition * (pixels / maxPixels);
    return newPosition;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstBloc, FirstState>(
      builder: (_, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            NotificationListener<ScrollNotification>(
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                padding: EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                controller: _controller,
                child: Row(
                  children: [
                    FirstPageScrollBoxItemWidget(
                      title: AfonDictionary.firstPageItemTitleName,
                      description: AfonDictionary.firstPageItemDescriptionName,
                      image: AfonImages.firstPageItemNames,
                    ),
                    FirstPageScrollBoxItemWidget(
                      title: AfonDictionary.firstPageItemTitleShop,
                      description: AfonDictionary.firstPageItemDescriptionShop,
                      image: AfonImages.firstPageItemShop,
                    ),
                    FirstPageScrollBoxItemWidget(
                      title: AfonDictionary.firstPageItemTitleNews,
                      description: AfonDictionary.firstPageItemDescriptionNews,
                      image: AfonImages.firstPageItemNews,
                    ),
                    FirstPageScrollBoxItemWidget(
                      title: AfonDictionary.firstPageItemTitlePiligrim,
                      description:
                          AfonDictionary.firstPageItemDescriptionPiligrim,
                      image: AfonImages.firstPageItemPiligrim,
                    ),
                  ],
                ),
              ),
              onNotification: (ScrollNotification scrollInfo) {
                if (scrollInfo is ScrollUpdateNotification &&
                    !scrollInfo.metrics.outOfRange) {
                  BlocProvider.of<FirstBloc>(context).add(
                      FirstEvent.toUpdatePositionScrollbar(
                          _newPosition(scrollInfo, context)));
                }
                return true;
              },
            ),
            Container(
              height: 5,
              child: Stack(
                children: [
                  Container(
                    height: 5,
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: AfonTheme.darkBrown.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: SizeFirstPageItem.widthScrollbar,
                    margin: EdgeInsets.only(
                        right: 25, left: 25 + state.scrollBarPosition),
                    decoration: BoxDecoration(
                      color: AfonTheme.accentGreen,
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
