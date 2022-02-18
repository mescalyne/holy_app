import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';

class ButtonSmall extends StatelessWidget {
  final String text;
  ButtonSmall({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: SizeButtonSmallSizes.padding,
      height: SizeButtonSmallSizes.height,
      decoration: BoxDecoration(
          color: AfonTheme.accentGreen, borderRadius: BorderRadius.circular(5)),
      child: Text(
        text.toUpperCase(),
        style:
            AfonTextStyle.asketSmallCaps(color: AfonTheme.white, fontSize: 8),
      ),
    );
  }
}
