import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/router/router.dart';
import 'package:afon_app/src/core/presentation/screens/book_view/book_view.dart';
import 'package:afon_app/src/core/presentation/screens/elder/elder.dart';
import 'package:afon_app/src/core/presentation/screens/first/first.dart';
import 'package:afon_app/src/core/presentation/screens/home/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/screens/home/view/home.dart';
import 'package:afon_app/src/core/presentation/screens/storypage/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/screens/storypage/storypage.dart';
import 'package:afon_app/src/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenProvider {
  static RouteInfo first(bool first) => RouteInfo(
      id: FirstPage.id,
      builder: (_) => BlocProvider<FirstBloc>(
            create: (_) => getIt<FirstBloc>(),
            child: FirstPage(first: first),
          ));
  static RouteInfo home() => RouteInfo(
        id: HomePage.id,
        builder: (_) => BlocProvider<HomeBloc>(
          create: (_) => getIt<HomeBloc>(),
          child: HomePage(),
        ),
      );
  static RouteInfo storypage(QuoteDto quote) => RouteInfo(
        id: StoryPage.id,
        builder: (_) => BlocProvider<StorypageBloc>(
          create: (_) => getIt<StorypageBloc>(param1: quote),
          child: StoryPage(),
        ),
      );
  static RouteInfo elder({required AuthorDto currentAuthor}) => RouteInfo(
        id: ElderPage.id,
        builder: (_) => BlocProvider<ElderBloc>(
          create: (_) => getIt<ElderBloc>(param1: currentAuthor),
          child: ElderPage(),
        ),
      );
  static RouteInfo bookView({required String bookUrl, required String title}) =>
      RouteInfo(
        id: BookViewPage.id,
        builder: (_) => BookViewPage(
          bookUrl: bookUrl,
          title: title,
        ),
      );
}

class RouteInfo {
  RouteInfo({
    required this.id,
    this.type = PageType.screen,
    required this.builder,
  });

  final String id;
  final WidgetBuilder builder;
  PageType type;

  @override
  String toString() {
    return 'Route: {id: $id, builder: $builder}';
  }
}
