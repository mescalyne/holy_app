import 'dart:async';

import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/search/search.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

typedef SearchEventHandler = Stream<SearchState>;

@Injectable()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  RouterEventSink _routerEventSink;

  SearchBloc(
    this._routerEventSink,
  ) : super(
          SearchState(),
        );

  @override
  SearchEventHandler mapEventToState(SearchEvent event) => event.when(
        onLoad: _onLoad,
        toFirstPage: _toFirstPage,
        toResultPage: _toResultPage,
      );

  SearchEventHandler _onLoad() async* {
    yield state.copyWith(
      currentStatus: ScreenStatus.view,
      searchStatus: SearchStatus.init,
    );
  }

  SearchEventHandler _toFirstPage() async* {
    _routerEventSink.add(RouterEvent.toFirst());
  }

  SearchEventHandler _toResultPage(String tag) async* {
    yield state.copyWith(searchStatus: SearchStatus.result);
  }
}
