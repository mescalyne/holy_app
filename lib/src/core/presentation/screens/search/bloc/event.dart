import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.onLoad() = OnLoad;
  const factory SearchEvent.toResultPage(String tag)=ToResultPage;
  const factory SearchEvent.toFirstPage() = ToFirstPage;

}
