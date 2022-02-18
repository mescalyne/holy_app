import 'package:afon_app/src/core/presentation/widgets/buttons/button_small.dart';
import 'package:afon_app/src/core/presentation/widgets/card/card_background.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';

class FirstPageScrollBoxItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  FirstPageScrollBoxItemWidget({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return CardBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 130,
            color: AfonTheme.black,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: AfonTextStyle.eposHeadline5(color: AfonTheme.darkBrown),
            maxLines: 1,
          ),
          SizedBox(height: 2),
          Text(
            description,
            style: AfonTextStyle.asketTextSmall(color: AfonTheme.darkBrown),
          ),
          SizedBox(height: 13),
          ButtonSmall(text: AfonDictionary.firstPageSectionInWork),
        ],
      ),
      margin: EdgeInsets.only(left: 5, right: 10),
      maxWidth: 240,
      maxHeight: 240,
    );
  }
}
