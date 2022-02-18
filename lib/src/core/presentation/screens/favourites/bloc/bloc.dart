import 'dart:async';

import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/favourites/favourites.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

typedef FavouritesEventHandler = Stream<FavouritesState>;

@Injectable()
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  RouterEventSink _routerEventSink;

  FavouritesBloc(this._routerEventSink)
      : super(
          FavouritesState(),
        ) {
    add(FavouritesEvent.onLoad());
  }

  @override
  FavouritesEventHandler mapEventToState(FavouritesEvent event) => event.when(
        onLoad: _onLoad,
        toFirstPage: _toFirstPage,
        onError: _onError,
      );

  FavouritesEventHandler _onLoad() async* {
    yield state.copyWith(currentStatus: ScreenStatus.view);
  }

  FavouritesEventHandler _onError() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  FavouritesEventHandler _toFirstPage() async* {
    _routerEventSink.add(RouterEvent.toFirst());
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
