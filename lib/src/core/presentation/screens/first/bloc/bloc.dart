import 'dart:async';

import 'package:afon_app/src/core/domain/usecases.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/first/first.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

typedef FirstEventHandler = Stream<FirstState>;

@Injectable()
class FirstBloc extends Bloc<FirstEvent, FirstState> {
  RouterEventSink _routerEventSink;
  // TODO: удалить
  // пример внедрения и использования юзкейса в блоке
  GetLocalizationUseCase _getLocalizationUseCase;

  FirstBloc(
    this._routerEventSink,
    this._getLocalizationUseCase,
  ) : super(
          FirstState(),
        );

  @override
  FirstEventHandler mapEventToState(FirstEvent event) => event.when(
        onLoaded: _onLoaded,
        toHome: _toHome,
        toClose: _close,
        toUpdatePositionScrollbar: _toUpdatePositionScrollbar,
      );

  FirstEventHandler _onLoaded() async* {
    // проверка отрабатывания запроса. TODO: удалить
    // _getLocalizationUseCase().then(print);
    yield state.copyWith(currentStatus: ScreenStatus.view);
  }

  FirstEventHandler _toHome() async* {
    _routerEventSink.add(RouterEvent.toHome());
  }

  FirstEventHandler _close() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  FirstEventHandler _toUpdatePositionScrollbar(double position) async* {
    yield state.copyWith(scrollBarPosition: position);
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
