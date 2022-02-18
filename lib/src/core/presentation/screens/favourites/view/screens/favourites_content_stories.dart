import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/favourites/favourites.dart';
import 'package:afon_app/src/core/presentation/widgets/loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesContentStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        switch (state.currentStatus) {
          case ScreenStatus.view:
            return CustomScrollView(
              slivers: [
                FavouritesContentStoriesListWidget(
                    stories: state.storiesExample),
              ],
            );
          default:
            return LoadingWidget();
        }
      },
    );
  }
}
