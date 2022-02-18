import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';

class CountQuotesTagWidget extends StatelessWidget {
  final int countQuotes;
  final double? opacity;

  CountQuotesTagWidget({required this.countQuotes, this.opacity});

  get opacityTag => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 70,
      decoration: BoxDecoration(
        color: AfonTheme.accentGreen.withOpacity(opacity ?? 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          countQuotes
              .toStringAndSignature(AfonDictionary.signQuotes)
              .toUpperCase(),
          style: AfonTextStyle.asketSmallCaps(
              color: AfonTheme.white.withOpacity(opacity ?? 1), fontSize: 8),
          maxLines: 1,
        ),
      ),
    );
  }
}
