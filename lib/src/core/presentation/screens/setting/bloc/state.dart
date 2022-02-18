import 'package:afon_app/src/core/presentation/entities/enums.dart';

class SettingState {
  final ScreenStatus currentStatus;
  final bool notify;
  final String language;
  final bool visualToggleValue;

  SettingState({
    this.currentStatus = ScreenStatus.view,
    this.notify = true,
    this.language = 'Русский',
    this.visualToggleValue = false,
  });

  SettingState copyWith({
    ScreenStatus? currentStatus,
    bool? notify,
    String? language,
    bool? visualToggleValue,
  }) =>
      SettingState(
        currentStatus: currentStatus ?? this.currentStatus,
        notify: notify ?? this.notify,
        language: language ?? this.language,
        visualToggleValue: visualToggleValue ?? this.visualToggleValue,
      );
}
