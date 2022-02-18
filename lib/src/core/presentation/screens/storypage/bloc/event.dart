import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class StorypageEvent with _$StorypageEvent {
  const factory StorypageEvent.onLoad() = OnLoad;
}
