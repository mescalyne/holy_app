import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';

class EldersState {
  final ScreenStatus currentStatus;
  final List<AuthorDto> authors;

  EldersState({
    this.currentStatus = ScreenStatus.loading,
    this.authors = const [],
  });

  EldersState copyWith({
    ScreenStatus? currentStatus,
    List<AuthorDto>? authors,
  }) =>
      EldersState(
        currentStatus: currentStatus ?? this.currentStatus,
        authors: authors ?? this.authors,
      );
}
