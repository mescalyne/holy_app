import 'package:afon_app/src/core/presentation/entities/enums.dart';

class SearchState {
  ScreenStatus currentStatus;
  SearchStatus? searchStatus;

  SearchState({
    this.currentStatus = ScreenStatus.view,
    this.searchStatus,
  });

  SearchState copyWith({
    ScreenStatus? currentStatus,
    SearchStatus? searchStatus,
  }) =>
      SearchState(
        currentStatus: currentStatus ?? this.currentStatus,
        searchStatus: searchStatus??this.searchStatus,
      );
}

enum SearchStatus {
  init,
  result,
}
