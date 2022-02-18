import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class RouterEvent with _$RouterEvent {
  const factory RouterEvent.pop() = OnPop;
  const factory RouterEvent.toHome() = ToHome;
  const factory RouterEvent.toFirst() = ToFirst;
  const factory RouterEvent.toStorypage(QuoteDto quoteDto) = ToStorypage;
  const factory RouterEvent.toElder(AuthorDto currentAuthor) = ToElder;
  const factory RouterEvent.toBookView(
      {required String bookUrl, required String title}) = ToBookView;
}
