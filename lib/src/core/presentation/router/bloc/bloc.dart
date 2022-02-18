import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/provider/screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'event.dart';

typedef RouteEventHandler = Stream<List<RouteInfo>>;

abstract class RouterEventSink {
  void add(RouterEvent event);
}

@Singleton(as: RouterEventSink)
class RouterBloc extends Bloc<RouterEvent, List<RouteInfo>>
    implements RouterEventSink {
  RouterBloc() : super([ScreenProvider.first(true)]);

  @override
  Stream<List<RouteInfo>> mapEventToState(RouterEvent event) => event.when(
        toHome: _onRouteToHome,
        pop: _onPop,
        toStorypage: _onRouteToStorypage,
        toFirst: _onRouteToFirst,
        toElder: _onRouteToElder,
        toBookView: _onRouteToBookView,
      );

  RouteEventHandler _onPop() async* {
    yield [...state..removeLast()];
  }

  RouteEventHandler _onRouteToHome() async* {
    yield [ScreenProvider.home()];
  }

  RouteEventHandler _onRouteToFirst() async* {
    yield [...state, ScreenProvider.first(false)];
  }

  RouteEventHandler _onRouteToStorypage(QuoteDto quote) async* {
    yield [...state, ScreenProvider.storypage(quote)];
  }

  RouteEventHandler _onRouteToElder(AuthorDto currentAuthor) async* {
    yield [...state, ScreenProvider.elder(currentAuthor: currentAuthor)];
  }

  RouteEventHandler _onRouteToBookView(String bookUrl, String title) async* {
    yield [...state, ScreenProvider.bookView(bookUrl: bookUrl, title: title)];
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
