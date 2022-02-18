import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/elder/elder.dart';
import 'package:afon_app/src/core/presentation/widgets/loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElderContentQuotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ElderBloc, ElderState>(
      builder: (context, state) {
        switch (state.currentStatus) {
          case ScreenStatus.view:
            return ElderContentQuotesListWidget(quotes: state.quotes);
          default:
            return LoadingWidget();
        }
      },
    );
  }
}
