import 'package:afon_app/src/core/presentation/screens/search/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/screens/search/bloc/event.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class TagField extends StatelessWidget {
  const TagField({Key? key}) : super(key: key);

  static const heighTag = 45.0;
  static const paddingTag = EdgeInsets.only(left: 14.0);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<SearchBloc>(context)
            .add(SearchEvent.toResultPage("Some tag"));
      },
      child: Container(
        height: heighTag,
        padding: paddingTag,
        alignment: Alignment.centerLeft,
        child: Text(
          'Some tag',
          style: AfonTextStyle.asketTextNarrow(
            color: AfonTheme.lightBrown,
          ),
        ),
      ),
    );
  }
}
