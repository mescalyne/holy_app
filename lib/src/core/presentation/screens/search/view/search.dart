import 'package:afon_app/src/core/presentation/screens/search/search.dart';
import 'package:afon_app/src/core/presentation/screens/search/view/search_main.dart';
import 'package:afon_app/src/core/presentation/screens/search/view/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocBuilder<SearchBloc, SearchState>(
          builder: (BuildContext context, SearchState state) {
        switch (state.searchStatus) {
          case SearchStatus.result:
            return SearchResult();
          default:
            return SearchMainScreen();
        }
      }),
    );
  }
}
