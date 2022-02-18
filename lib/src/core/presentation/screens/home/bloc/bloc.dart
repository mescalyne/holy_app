import 'dart:async';

import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/home/home.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

typedef HomeEventHandler = Stream<HomeState>;

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          HomeState(),
        );

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) => event.when(
        onLoaded: _onLoaded,
        onBottomNavigationItemClickedEvent: _onBottomNavigationItemClickedEvent,
      );

  HomeEventHandler _onLoaded() async* {
    yield state.copyWith(currentStatus: ScreenStatus.view);
  }

  HomeEventHandler _onBottomNavigationItemClickedEvent(
      HomeScreen selectedScreen) async* {
    yield state.copyWith(
      currentScreen: selectedScreen,
    );
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
