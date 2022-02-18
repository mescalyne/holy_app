import 'dart:async';
import 'dart:math';
import 'package:afon_app/src/core/domain/entities/quote.dart';
import 'package:afon_app/src/core/domain/usecases/quote.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/elders/bloc/state.dart';
import 'package:afon_app/src/core/presentation/screens/main/main.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

typedef MainEventHandler = Stream<MainState>;

@Injectable()
class MainBloc extends Bloc<MainEvent, MainState> {
  RouterEventSink _routerEventSink;
  GetQuoteUseCase _getQuoteUseCase;

  MainBloc(
    this._routerEventSink,
    this._getQuoteUseCase,
  ) : super(
          MainState(
            quotesList: [],
            currentStatus: ScreenStatus.loading,
          ),
        ) {
    add(OnLoad());
  }
  @override
  MainEventHandler mapEventToState(MainEvent event) => event.when(
        onLoad: _onLoad,
        toFirstPage: _toFirstPage,
        toStoryPage: _toStoryPage,
      );

  MainEventHandler _onLoad() async* {
    try {
      var result = await _getQuoteUseCase();
      if (result.isNotEmpty) {
        yield state.copyWith(
            currentStatus: ScreenStatus.view, quotesList: result);
      } else
        throw Exception();
    } catch (ex) {
      Log.error('getAuthor isEmpty');
      yield state.copyWith(currentStatus: ScreenStatus.error);
    }
  }

  MainEventHandler _toFirstPage() async* {
    _routerEventSink.add(RouterEvent.toFirst());
  }

  MainEventHandler _toStoryPage(QuoteDto quote) async* {
    _routerEventSink.add(RouterEvent.toStorypage(quote));
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
