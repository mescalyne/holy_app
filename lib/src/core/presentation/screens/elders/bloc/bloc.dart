import 'dart:async';

import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/domain/usecases.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/elders/elders.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

typedef EldersEventHandler = Stream<EldersState>;

@Injectable()
class EldersBloc extends Bloc<EldersEvent, EldersState> {
  RouterEventSink _routerEventSink;
  GetAuthorUseCase _getAuthorUseCase;

  EldersBloc(
    this._routerEventSink,
    this._getAuthorUseCase,
  ) : super(
          EldersState(),
        ) {
    add(EldersEvent.onLoad());
  }

  @override
  EldersEventHandler mapEventToState(EldersEvent event) => event.when(
        onLoad: _load,
        toFirstPage: _toFirstPage,
        onError: _onError,
        toElder: _toElder,
      );

  EldersEventHandler _load() async* {
    var result = await _getAuthorUseCase();
    if (result.isNotEmpty) {
      
      yield state.copyWith(currentStatus: ScreenStatus.view, authors: result);
    } else {
      Log.error('getAuthor isEmpty');
      yield state.copyWith(currentStatus: ScreenStatus.error);
    }
  }

  EldersEventHandler _onError() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  EldersEventHandler _toFirstPage() async* {
    _routerEventSink.add(RouterEvent.toFirst());
  }

  EldersEventHandler _toElder(AuthorDto author) async* {
    _routerEventSink.add(RouterEvent.toElder(author));
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
