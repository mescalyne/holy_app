import 'package:afon_app/src/resources/dictionary.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

extension DateTimeParser on String {
  DateTime get dateToDateTime => DateTime.parse(this);
}

extension DateTimeToString on DateTime {
  String get toDateString {
    var format = DateFormat('dd MMMM yyyy', AfonDictionary.localeString);
    return format.format(this);
  }
}
