import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: AfonTheme.darkBrown.withOpacity(0.2),
        color: AfonTheme.accentGreen,
      ),
    );
  }
}
