import 'package:afon_app/src/core/domain/entities/quote.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.onLoad() = OnLoad;
  const factory MainEvent.toStoryPage(QuoteDto quote) = ToStoryPage;
  const factory MainEvent.toFirstPage() = ToFirstPage;
}
