import 'package:afon_app/src/core/presentation/entities/enums.dart';

class FirstState {
  final ScreenStatus currentStatus;
  final double scrollBarPosition;

  FirstState({
    this.currentStatus = ScreenStatus.view,
    this.scrollBarPosition = 0.0,
  });

  FirstState copyWith({
    ScreenStatus? currentStatus,
    double? scrollBarPosition,
  }) =>
      FirstState(
        currentStatus: currentStatus ?? this.currentStatus,
        scrollBarPosition: scrollBarPosition ?? this.scrollBarPosition,
      );
}
