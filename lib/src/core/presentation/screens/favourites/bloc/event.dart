import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.onLoad() = OnLoad;
  const factory FavouritesEvent.onError() = OnError;
  const factory FavouritesEvent.toFirstPage() = ToFirstPage;
}
