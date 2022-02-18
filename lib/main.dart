import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/router.dart';
import 'package:afon_app/src/core/presentation/screens/elders/elders.dart';
import 'package:afon_app/src/core/presentation/screens/favourites/favourites.dart';
import 'package:afon_app/src/core/presentation/screens/home/home.dart';
import 'package:afon_app/src/core/presentation/screens/main/main.dart';
import 'package:afon_app/src/core/presentation/screens/search/search.dart';
import 'package:afon_app/src/core/presentation/screens/setting/setting.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/injection/injection.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klocalizations_flutter/klocalizations_flutter.dart';

void main() async {
  await setupApp();
  runApp(MyApp());
}

Future<void> setupApp() async {
  await configureInjection(Env.dev);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ru', 'RU'),
      ],
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        child: BlocProvider<RouterBloc>(
          create: (_) => getIt<RouterEventSink>() as RouterBloc,
          child: MultiBlocProvider(
            providers: [
              BlocProvider<HomeBloc>(
                create: (_) => getIt<HomeBloc>(),
              ),
              BlocProvider<MainBloc>(
                create: (_) => getIt<MainBloc>(),
              ),
              BlocProvider<EldersBloc>(
                create: (_) => getIt<EldersBloc>(),
              ),
              BlocProvider<SearchBloc>(
                create: (_) => getIt<SearchBloc>(),
              ),
              BlocProvider<FavouritesBloc>(
                create: (_) => getIt<FavouritesBloc>(),
              ),
              BlocProvider<SettingBloc>(
                create: (_) => getIt<SettingBloc>(),
              ),
            ],
            child: Router(
              routerDelegate: AppRouterDelegate(),
              backButtonDispatcher: RootBackButtonDispatcher(),
            ),
          ),
        ),
      ),
      theme: ThemeData(
        fontFamily: AfonTextStyle.fontFamilyEpos,
        backgroundColor: AfonTheme.backgroundColor,
        primaryColor: AfonTheme.accentGreen,
        primaryColorLight: AfonTheme.lightGreen,
        accentColor: AfonTheme.accentGreen,
        cardColor: AfonTheme.cards,
        scaffoldBackgroundColor: AfonTheme.backgroundColor,
      ),
    );
  }
}
