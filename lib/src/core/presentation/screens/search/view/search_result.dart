import 'package:afon_app/src/core/presentation/screens/search/search.dart';
import 'package:afon_app/src/core/presentation/screens/search/view/result_card.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResult extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AfonTheme.transparent,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () =>
              BlocProvider.of<SearchBloc>(context).add(SearchEvent.onLoad()),
          child: Icon(
            AfonIcons.chevron_left,
            color: AfonTheme.darkBrown,
          ),
        ),
        title: Text(
          '#благодарность', //TODO Тег с бека
          style: AfonTextStyle.rossikaHeading1(color: AfonTheme.darkBrown),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        controller: _controller,
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => SearchResultCard(),
            ),
          ],
        ),
      ),
    );
  }
}
