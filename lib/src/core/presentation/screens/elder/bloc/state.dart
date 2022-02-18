import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';

class ElderState {
  final ScreenStatus currentStatus;
  final int currentPage;
  final AuthorDto currentAuthor;
  final List<QuoteDto> quotes;
  final List<LibBookDto> libBooks;

  ElderState({
    this.currentStatus = ScreenStatus.loading,
    this.currentPage = 0,
    required this.currentAuthor,
    this.quotes = const [],
    this.libBooks = const [],
  });

  ElderState copyWith({
    ScreenStatus? currentStatus,
    int? currentPage,
    AuthorDto? currentAuthor,
    List<QuoteDto>? quotes,
    List<LibBookDto>? libBooks,
  }) =>
      ElderState(
        currentStatus: currentStatus ?? this.currentStatus,
        currentPage: currentPage ?? this.currentPage,
        currentAuthor: currentAuthor ?? this.currentAuthor,
        quotes: quotes ?? this.quotes,
        libBooks: libBooks ?? this.libBooks,
      );
}
