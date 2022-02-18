import 'package:afon_app/src/resources/dictionary.dart';

extension IntToStringExtension on int {
  String toStringAndSignature(
    SignatureStrings signString,
  ) {
    if (this >= 5 && this <= 20) {
      return '$this ${signString.fiveSign}';
    }
    if (this % 10 == 1) {
      return '$this ${signString.oneSign}';
    }
    if (this % 10 >= 2 && this % 10 <= 4) {
      return '$this ${signString.twoSign}';
    } else {
      return '$this ${signString.fiveSign}';
    }
  }
}
