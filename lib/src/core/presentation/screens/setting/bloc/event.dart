import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.onLoad() = OnLoad;
  const factory SettingEvent.toFirstPage() = ToFirstPage;
  const factory SettingEvent.onError() = OnError;
  const factory SettingEvent.onVisualToggle(bool value) = OnVisualToggle;
}
