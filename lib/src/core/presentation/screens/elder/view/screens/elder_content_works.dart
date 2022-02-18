import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/core/presentation/screens/elder/elder.dart';
import 'package:afon_app/src/core/presentation/widgets/loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElderContentWorks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ElderBloc, ElderState>(builder: (context, state) {
      switch (state.currentStatus) {
        case ScreenStatus.view:
          return ElderContentWorkListWidget(libBooks: state.libBooks);
        default:
          return LoadingWidget();
      }
    });
  }
}
