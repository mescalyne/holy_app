import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onLoaded() = OnLoaded;
  const factory HomeEvent.onBottomNavigationItemClickedEvent(
      HomeScreen selectedScreen) = OnBottomNavigationItemClickedEvent;
}
