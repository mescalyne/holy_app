import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/components/mount_scaffold.dart';
import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/widgets/tags/count_quotes.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../elder.dart';

class ElderPageAppBarWidget extends StatelessWidget {
  final TabController tabController;
  final int countQuotes;
  final AuthorDto author;
  ElderPageAppBarWidget({
    required this.tabController,
    required this.countQuotes,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _ElderPageAppBarWidgetDelegate(
        tabController: tabController,
        countQuotes: countQuotes,
        author: author,
      ),
    );
  }
}

class _ElderPageAppBarWidgetDelegate extends SliverPersistentHeaderDelegate {
  final TabController tabController;
  final int countQuotes;
  final AuthorDto author;

  _ElderPageAppBarWidgetDelegate({
    required this.tabController,
    required this.countQuotes,
    required this.author,
  });

  static const _startAnimateOffset = 20.0;
  static const _minSizeContainer = 35.0;
  static const _marginContainerRight = 10.0;
  static const _startAnimateText = 09.0;
  static const _maxHeightText = 90.0;
  static const _paddingTopAppBar = 42.0;
  static const _offsetDisableImageDivider = 275.0;
  static const _offsetDisableText = 235.0;
  static const _maxImageHeight = 160.0;
  static const _maxImageWidth = 165.0;

  static double _getHeightContainer(double offset) =>
      (offset > _startAnimateOffset)
          ? (offset < 340 - _minSizeContainer)
              ? (SizeElderPageAppBar.maxHeightContainerContent -
                  offset +
                  _startAnimateOffset)
              : _minSizeContainer
          : SizeElderPageAppBar.maxHeightContainerContent;

  static double _getWidthContainer(double offset) =>
      (_getHeightContainer(offset) >
              SizeElderPageAppBar.maxWidthContainerContent)
          ? SizeElderPageAppBar.maxWidthContainerContent
          : _getHeightContainer(offset);

  static double _getCenterWight(BuildContext context) =>
      (MediaQuery.of(context).size.width - _marginContainerRight * 2) / 2;

  static double _getPositionContainerOrCenter(
          double wContainer, double hContainer, context) =>
      (wContainer == hContainer)
          ? _getCenterWight(context) *
              (1 - (wContainer / SizeElderPageAppBar.maxWidthContainerContent))
          : 0;

  static double _getOpacityTag(double diffHxW) =>
      diffHxW /
      (SizeElderPageAppBar.maxHeightContainerContent -
          SizeElderPageAppBar.maxWidthContainerContent);

  static double _getBottomPositionContainer(double offset) =>
      (offset > 20) ? 0 : 20 - offset;

  static double _getHeightTopPaddingContainer(double height, double width) =>
      (height > width)
          ? 30.0
          : 30 *
              ((width - _minSizeContainer) /
                  (SizeElderPageAppBar.maxWidthContainerContent -
                      _minSizeContainer));

  static double _getOpacityTitleTop(double offset) =>
      (offset < _startAnimateText)
          ? 0
          : (offset > _startAnimateText + _maxHeightText)
              ? 1
              : (offset - _startAnimateText) / _maxHeightText;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    //TODO: поработать над плавностью анимации))
    double rightPosition = _getCenterWight(context) -
        _getWidthContainer(shrinkOffset) / 2 -
        _getPositionContainerOrCenter(_getWidthContainer(shrinkOffset),
            _getHeightContainer(shrinkOffset), context);
    double opacityTag = _getOpacityTag(
        _getHeightContainer(shrinkOffset) - _getWidthContainer(shrinkOffset));

    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        MountsBackgroundHeader(),
        Positioned(
          top: _paddingTopAppBar,
          left: 30,
          child: GestureDetector(
            onTap: () {
              BlocProvider.of<RouterBloc>(context).add(RouterEvent.pop());
            },
            child: Container(
              color: AfonTheme.transparent,
              child: Center(
                child: Icon(
                  AfonIcons.chevron_left,
                  color: AfonTheme.darkBrown,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: _paddingTopAppBar - 3,
          child: Container(
            height: 25,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                author.authorName.toUpperCase(),
                style: AfonTextStyle.eposHeadline6(
                    color: AfonTheme.darkBrown
                        .withOpacity(_getOpacityTitleTop(shrinkOffset))),
              ),
            ),
          ),
        ),
        Positioned(
          right: _marginContainerRight + rightPosition,
          bottom: _getBottomPositionContainer(shrinkOffset),
          child: _containerContent(shrinkOffset),
        ),
        if (_getHeightContainer(shrinkOffset) >
            _getWidthContainer(shrinkOffset))
          Positioned(
            top: 105,
            left: rightPosition - 15,
            child: CountQuotesTagWidget(
              countQuotes: countQuotes,
              opacity: opacityTag,
            ),
          ),
        Container(
          height: SizeElderPageAppBar.heightTabBar,
          child: Column(
            children: [
              _tabBar(context),
              Divider(
                height: 1,
                color: AfonTheme.lightGreen,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _containerContent(double offset) {
    double imageWidth = _maxImageWidth *
        _getWidthContainer(offset) /
        SizeElderPageAppBar.maxWidthContainerContent;
    double imageHeight = _maxImageHeight *
        _getWidthContainer(offset) /
        SizeElderPageAppBar.maxWidthContainerContent;
    double opacityContainer = (_getWidthContainer(offset) <= _minSizeContainer)
        ? 0.0
        : _getWidthContainer(offset) /
            SizeElderPageAppBar.maxWidthContainerContent;
    double _getHeightTextContainer = (offset < _startAnimateText)
        ? _maxHeightText
        : (offset > _startAnimateText + _maxHeightText)
            ? 0
            : _startAnimateText + _maxHeightText - offset;

    return Container(
      height: _getHeightContainer(offset),
      width: _getWidthContainer(offset),
      margin: EdgeInsets.only(
        bottom: 55,
      ),
      decoration: BoxDecoration(
        color: AfonTheme.cards.withOpacity(opacityContainer),
        boxShadow: [
          AfonTheme.shadows.cardBackground,
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: _getHeightTopPaddingContainer(
                    _getHeightContainer(offset), _getWidthContainer(offset))),
            height: imageHeight,
            child: SvgPicture.network(
              author.portrait,
              width: imageWidth,
              height: imageHeight,
            ),
          ),
          if (_getHeightContainer(offset) > _offsetDisableImageDivider)
            Image.asset(
              AfonImages.elderAppBarDivider,
              color: AfonTheme.black,
              height: 10,
              width: 155,
            ),
          if (_getHeightContainer(offset) > _offsetDisableText)
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
                bottom: _getHeightTextContainer * 0.3 + 5,
              ),
              constraints: BoxConstraints(
                maxHeight: _getHeightTextContainer,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      author.rank.toUpperCase(),
                      style: AfonTextStyle.eposHeadline6(
                          color: AfonTheme.darkBrown
                              .withOpacity(1 - _getOpacityTitleTop(offset))),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      author.authorName.toUpperCase(),
                      style: AfonTextStyle.eposHeadline4(
                          color: AfonTheme.darkBrown
                              .withOpacity(1 - _getOpacityTitleTop(offset))),
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _tabBar(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.only(left: 24, right: 23),
      labelPadding: EdgeInsets.only(left: 10, right: 10),
      controller: tabController,
      unselectedLabelColor: AfonTheme.lightBrown,
      labelColor: AfonTheme.darkBrown,
      labelStyle: AfonTextStyle.asketTextRegular(color: AfonTheme.darkBrown),
      unselectedLabelStyle:
          AfonTextStyle.asketTextRegular(color: AfonTheme.lightBrown),
      indicatorColor: AfonTheme.accentGreen,
      indicatorWeight: 4,
      indicator: BoxDecoration(
          color: AfonTheme.accentGreen,
          borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
      indicatorPadding: EdgeInsets.only(top: 46),
      indicatorSize: TabBarIndicatorSize.label,
      onTap: (int index) {
        BlocProvider.of<ElderBloc>(context)
            .add(ElderEvent.onClickTabBar(index));
      },
      tabs: [
        Tab(
          icon: Container(
            width: SizeElderPageAppBar.widthTabBarItem,
            child: Center(child: Text(AfonDictionary.elderTabBarItemQuotes)),
          ),
        ),
        Tab(
          icon: Container(
            width: SizeElderPageAppBar.widthTabBarItem,
            child: Center(child: Text(AfonDictionary.elderTabBarItemWorks)),
          ),
        ),
        Tab(
          icon: Container(
            width: SizeElderPageAppBar.widthTabBarItem,
            child: Center(child: Text(AfonDictionary.elderTabBarItemLife)),
          ),
        ),
        Tab(
          icon: Container(
            width: SizeElderPageAppBar.widthTabBarItem,
            child: Center(child: Text(AfonDictionary.elderTabBarItemPrayer)),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => SizeElderPageAppBar.maxExtent;

  @override
  double get minExtent => SizeElderPageAppBar.minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
