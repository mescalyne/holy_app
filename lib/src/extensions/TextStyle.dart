import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';

extension AfonTextStyle on TextStyle {
  static const fontFamilyRossika = 'RossikaLight';
  static const fontFamilyAsketNarrow = 'AsketNarrow';
  static const fontFamilyEpos = 'EposNormalApp';

  // Font Family - Rossika
  static TextStyle rossikaHeading1({Color? color}) => TextStyle(
        fontFamily: fontFamilyRossika,
        fontSize: 35,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
      );

  static TextStyle rossikaHeading2({Color? color}) => TextStyle(
        fontFamily: fontFamilyRossika,
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
      );

  // Font Family - Asket Narrow
  static TextStyle asketTextNarrow(
          {Color? color,
          double? fontSize,
          FontWeight? fontWeight,
          double? height}) =>
      TextStyle(
        fontFamily: fontFamilyAsketNarrow,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AfonTheme.textColor,
        height: height ?? 1.44,
      );

  static TextStyle asketTextRegular({Color? color}) => TextStyle(
        fontFamily: fontFamilyAsketNarrow,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
        height: 1.44,
      );

  static TextStyle asketTextSmall({Color? color}) => TextStyle(
        fontFamily: fontFamilyAsketNarrow,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
        height: 1.25,
      );

  static TextStyle asketSmallCaps({Color? color, double fontSize = 12}) =>
      TextStyle(
        fontFamily: fontFamilyAsketNarrow,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
        letterSpacing: 0.4,
        height: 1.87,
      );

  static TextStyle asketCapsUnderlined({Color? color}) => TextStyle(
        fontFamily: fontFamilyAsketNarrow,
        fontSize: 8,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
        decoration: TextDecoration.underline,
        height: 1.87,
      );

  // Font Family - Epos
  static TextStyle eposHeadline1({Color? color}) => TextStyle(
        fontFamily: fontFamilyEpos,
        fontSize: 35,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
        letterSpacing: -0.16,
      );

  static TextStyle eposHeadline2({Color? color}) => TextStyle(
        fontFamily: fontFamilyEpos,
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
      );

  static TextStyle eposHeadline3({Color? color}) => TextStyle(
        fontFamily: fontFamilyEpos,
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
      );

  static TextStyle eposHeadline4({Color? color}) => TextStyle(
        fontFamily: fontFamilyEpos,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
      );

  static TextStyle eposHeadline5({Color? color}) => TextStyle(
        fontFamily: fontFamilyEpos,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
        height: 1.33,
      );

  static TextStyle eposHeadline6({Color? color}) => TextStyle(
        fontFamily: fontFamilyEpos,
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
        height: 1.54,
      );

  static TextStyle eposHeadline7({Color? color}) => TextStyle(
        fontFamily: fontFamilyEpos,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: color ?? AfonTheme.textColor,
        height: 1.5,
      );
}
