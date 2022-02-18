import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/extensions/TextStyle.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';

class ButtonRound extends StatelessWidget {
  final String text;
  final Function onPress;
  ButtonRound({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        height: SizeButtonRoundSizes.height,
        margin: SizeButtonRoundSizes.margin,
        decoration: BoxDecoration(
            color: AfonTheme.accentGreen,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            text,
            style: AfonTextStyle.asketTextRegular(color: AfonTheme.white),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
