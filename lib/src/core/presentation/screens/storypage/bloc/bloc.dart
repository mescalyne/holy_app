import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/screens/storypage/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/storypage/bloc/state.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

typedef StorypageEventHandler = Stream<StorypageState>;

@Injectable()
class StorypageBloc extends Bloc<StorypageEvent, StorypageState> {
  QuoteDto? quote;

  StorypageBloc(
    @factoryParam this.quote,
  ) : super(
          StorypageState(quote: quote!),
        );

  @override
  StorypageEventHandler mapEventToState(StorypageEvent event) => event.when(
        onLoad: _onLoad,
      );

  StorypageEventHandler _onLoad() async* {}
}
