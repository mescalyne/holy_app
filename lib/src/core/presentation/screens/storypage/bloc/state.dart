import 'package:afon_app/src/core/domain/entities/quote.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';

class StorypageState {
  ScreenStatus currentStatus;
  QuoteDto quote;

  StorypageState({
    this.currentStatus = ScreenStatus.view,
    required this.quote,
  });

  StorypageState copyWith({
    ScreenStatus? currentStatus,
    QuoteDto? quote,
  }) =>
      StorypageState(
        currentStatus: currentStatus ?? this.currentStatus,
        quote: quote ?? this.quote,
      );
}
