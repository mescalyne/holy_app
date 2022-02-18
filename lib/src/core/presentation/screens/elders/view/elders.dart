import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/elders/elders.dart';
import 'package:afon_app/src/core/presentation/screens/elders/view/widget/item_cart.dart';
import 'package:afon_app/src/core/presentation/widgets/appBars/appBar_mount_picture.dart';
import 'package:afon_app/src/core/presentation/widgets/loading_widget.dart';
import 'package:afon_app/src/resources/dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EldersPage extends StatefulWidget {
  static const id = '/elders';
  const EldersPage({Key? key}) : super(key: key);

  @override
  _EldersPageState createState() => _EldersPageState();
}

class _EldersPageState extends State<EldersPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocConsumer<EldersBloc, EldersState>(
        listener: (context, state) {
          if (state.currentStatus == ScreenStatus.error) {
            //TODO modal error
            BlocProvider.of<EldersBloc>(context).add(EldersEvent.onError());
          }
        },
        builder: (BuildContext context, EldersState state) {
          return CustomScrollView(
            slivers: [
              AppBarMountPicture(
                title: AfonDictionary.eldersPageTitle,
                onPresAction: _onPressMenu,
              ),
              BlocBuilder<EldersBloc, EldersState>(builder: (context, state) {
                switch (state.currentStatus) {
                  case ScreenStatus.view:
                    return SliverPadding(
                      padding: EdgeInsets.all(25),
                      sliver: SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5.0,
                          crossAxisSpacing: 5.0,
                          mainAxisExtent: 150,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return ElderItemCartWidget(
                              author: state.authors[index],
                            );
                          },
                          childCount: state.authors.length,
                        ),
                      ),
                    );
                  default:
                    return SliverFillRemaining(
                      child: LoadingWidget(),
                    );
                }
              }),
            ],
          );
        },
      ),
    );
  }

  void _onPressMenu() {
    BlocProvider.of<EldersBloc>(context).add(EldersEvent.toFirstPage());
  }
}
