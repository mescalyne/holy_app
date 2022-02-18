import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class FirstEvent with _$FirstEvent {
  const factory FirstEvent.onLoaded() = OnLoaded;
  const factory FirstEvent.toHome() = ToHome;
  const factory FirstEvent.toClose() = ToClose;
  const factory FirstEvent.toUpdatePositionScrollbar(double position) =
      ToScrollScrollbar;
}
