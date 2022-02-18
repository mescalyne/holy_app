import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/elder/bloc/event.dart';
import 'package:afon_app/src/core/presentation/screens/elder/elder.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElderPage extends StatefulWidget {
  static const id = '/elder';

  @override
  _ElderPageState createState() => _ElderPageState();
}

class _ElderPageState extends State<ElderPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AfonTheme.backgroundColor,
      body: BlocConsumer<ElderBloc, ElderState>(
        listener: (context, state) {
          if (state.currentStatus == ScreenStatus.error) {
            //TODO modal error
            BlocProvider.of<ElderBloc>(context).add(ElderEvent.onError());
          }
        },
        builder: (context, state) {
          return NestedScrollView(
            physics: ClampingScrollPhysics(),
            headerSliverBuilder: (_, __) => [
              ElderPageAppBarWidget(
                tabController: _tabController,
                countQuotes: state.quotes.length,
                author: state.currentAuthor,
              ),
            ],
            body: TabBarView(
              controller: _tabController,
              children: [
                Tab(child: ElderContentQuotes()),
                Tab(child: ElderContentWorks()),
                Tab(child: ElderContentLife()),
                Tab(child: ElderContentPrayer()),
              ],
            ),
          );
        },
      ),
    );
  }
}
