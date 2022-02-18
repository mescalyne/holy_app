import 'package:afon_app/src/extensions/TextStyle.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryContent extends StatelessWidget {
  const StoryContent({Key? key}) : super(key: key);

  static const paddingPage =
      EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0, bottom: 32.0);
  static const paddingContent =
      EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 30);

  static const heightTitle = 60.0;
  static const bottomImageContainerHeight = 107.0;
  static const bottomImageHeight = 70.0;

  @override
  Widget build(BuildContext context) {
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
                  Container(
                    height: heightTitle,
                    child: Text(
                      AfonDictionary.storyPageStory,
                      style: AfonTextStyle.eposHeadline2(
                          color: AfonTheme.darkBrown),
                    ),
                  ),
                  Container(
                    child: Text(AfonDictionary.textStory,
                        style: AfonTextStyle.asketTextRegular(
                            color: AfonTheme.darkBrown)),
                  ),
                ],
              ),
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
    );
  }
}
