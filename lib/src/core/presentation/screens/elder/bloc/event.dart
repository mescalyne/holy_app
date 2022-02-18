import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class ElderEvent with _$ElderEvent {
  const factory ElderEvent.onLoad() = OnLoad;
  const factory ElderEvent.onError() = OnError;
  const factory ElderEvent.onClickTabBar(int index) = OnClickTabBar;
}
