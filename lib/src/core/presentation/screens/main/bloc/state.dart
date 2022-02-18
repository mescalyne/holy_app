import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';

class MainState {
  ScreenStatus currentStatus;
  List<QuoteDto> quotesList;

  MainState({
    this.currentStatus = ScreenStatus.view,
    required this.quotesList,
  });

  MainState copyWith({
    ScreenStatus? currentStatus,
    List<QuoteDto>? quotesList,
  }) =>
      MainState(
        currentStatus: currentStatus ?? this.currentStatus,
        quotesList: quotesList ?? this.quotesList,
      );
}
