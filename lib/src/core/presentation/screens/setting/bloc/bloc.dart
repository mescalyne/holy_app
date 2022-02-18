import 'dart:async';

import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/setting/setting.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

typedef SettingEventHandler = Stream<SettingState>;

@Injectable()
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  RouterEventSink _routerEventSink;

  SettingBloc(
    this._routerEventSink,
  ) : super(
          SettingState(),
        );

  @override
  SettingEventHandler mapEventToState(SettingEvent event) => event.when(
        onLoad: _onLoad,
        toFirstPage: _toFirstPage,
        onError: _onError,
        onVisualToggle: _onVisualToggle,
      );

  SettingEventHandler _onLoad() async* {
    yield state.copyWith(currentStatus: ScreenStatus.view);
  }

  SettingEventHandler _onError() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  SettingEventHandler _toFirstPage() async* {
    _routerEventSink.add(RouterEvent.toFirst());
  }

  SettingEventHandler _onVisualToggle(bool value) async* {
    yield state.copyWith(visualToggleValue: value);
    //TODO: смена версии для слабовидящих
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
