import 'dart:math';
import 'package:afon_app/src/core/presentation/screens/search/view/tag_field.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';

class SearchMainScreen extends StatefulWidget {
  const SearchMainScreen({Key? key}) : super(key: key);

  @override
  _SearchMainScreenState createState() => _SearchMainScreenState();
}

class _SearchMainScreenState extends State<SearchMainScreen> {
  final ScrollController _controller = ScrollController();

  static const paddingContent =
      EdgeInsets.only(top: 10.0, right: 25.0, left: 25.0, bottom: 10.0);
  static const heightAppBar = 215.0;
  static const paddingDropDownMenu =
      EdgeInsets.only(left: 15.0, top: 13.0, bottom: 12.0, right: 18.48);
  static const paddingInfo = EdgeInsets.only(bottom: 35.0);

  var isOpenDropDown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(heightAppBar), // Set this height
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: heightAppBar,
              child: Image.asset(
                AfonImages.subtract,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 25.0,
              child: Text(
                AfonDictionary.searchPageTitle,
                style: AfonTextStyle.rossikaHeading1(),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: paddingContent,
        child: Column(
          children: [
            Container(
              padding: paddingInfo,
              child: Text(
                AfonDictionary.searchPageInfo,
                style: AfonTextStyle.asketTextNarrow(
                  color: AfonTheme.darkBrown,
                  fontSize: 12.0,
                ),
              ),
            ),
            InkWell(
              onTap: () => setState(() {
                isOpenDropDown = !isOpenDropDown;
              }),
              child: Container(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AfonTheme.cards,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      width: 1.0,
                      color: AfonTheme.lightBorderline,
                    ),
                  ),
                  child: Padding(
                    padding: paddingDropDownMenu,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AfonDictionary.searchPageChoosing,
                          style: AfonTextStyle.asketTextNarrow(
                            color: AfonTheme.lightBrown,
                          ),
                        ),
                        Transform.rotate(
                          angle: (isOpenDropDown ? 90 : -90) * pi / 180,
                          child: Icon(
                            AfonIcons.chevron_left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            if (isOpenDropDown)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AfonTheme.cards,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      width: 1.0,
                      color: AfonTheme.lightBorderline,
                    ),
                  ),
                  child: RawScrollbar(
                    isAlwaysShown: true,
                    thumbColor: AfonTheme.accentGreen,
                    crossAxisMargin: 5,
                    mainAxisMargin: 5,
                    minThumbLength: 70,
                    minOverscrollLength: 70,
                    radius: Radius.circular(9),
                    thickness: 5,
                    controller: _controller,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      controller: _controller,
                      child: Column(
                        children: [
                          TagField(),
                          TagField(),
                          TagField(),
                          TagField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
