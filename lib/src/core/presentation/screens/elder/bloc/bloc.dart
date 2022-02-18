import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/domain/usecases.dart';
import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/elder/elder.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

typedef ElderEventHandler = Stream<ElderState>;

@Injectable()
class ElderBloc extends Bloc<ElderEvent, ElderState> {
  RouterEventSink _routerEventSink;
  GetQuotesByAuthorIdUseCase _getQuotesByAuthorIdUseCase;
  GetLibBooksByAuthorIdUseCase _getLibBooksByAuthorIdUseCase;

  ElderBloc(
    @factoryParam AuthorDto? currentAuthor,
    this._routerEventSink,
    this._getQuotesByAuthorIdUseCase,
    this._getLibBooksByAuthorIdUseCase,
  ) : super(
          ElderState(
            currentAuthor: currentAuthor!,
          ),
        ) {
    add(ElderEvent.onLoad());
  }

  @override
  ElderEventHandler mapEventToState(ElderEvent event) => event.when(
        onLoad: _onLoad,
        onError: _onError,
        onClickTabBar: _onClickTabBar,
      );

  ElderEventHandler _onError() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  ElderEventHandler _onLoad() async* {
    try {
      final quotes = await _getQuotesByAuthorIdUseCase(state.currentAuthor.pk);
      final libBooks =
          await _getLibBooksByAuthorIdUseCase(state.currentAuthor.pk);
      yield state.copyWith(
          currentStatus: ScreenStatus.view, quotes: quotes, libBooks: libBooks);
    } catch (_) {
      Log.error('getAuthor $_');
      yield state.copyWith(currentStatus: ScreenStatus.error);
    }
  }

  ElderEventHandler _onClickTabBar(int index) async* {
    yield state.copyWith(currentPage: index);
  }
}
