import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBackgroundWidget extends StatelessWidget {
  final double? minHeight;
  final double? minWidth;
  final double? maxHeight;
  final double? maxWidth;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Widget child;
  final Function? onTap;
  final Color? color;

  const CardBackgroundWidget({
    Key? key,
    required this.child,
    this.maxHeight,
    this.maxWidth,
    this.minWidth,
    this.minHeight,
    this.padding = const EdgeInsets.all(15),
    this.margin = EdgeInsets.zero,
    this.onTap = null,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => (onTap != null) ? onTap!() : null,
      child: Container(
        padding: padding,
        margin: margin,
        constraints: BoxConstraints(
          minHeight: minHeight ?? maxHeight ?? 30.0,
          maxHeight: maxHeight ?? double.infinity,
          minWidth: minWidth ?? maxWidth ?? 30.0,
          maxWidth: maxWidth ?? double.infinity,
        ),
        decoration: BoxDecoration(
          color: color ?? AfonTheme.cards,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [AfonTheme.shadows.cardBackground],
        ),
        child: child,
      ),
    );
  }
}
