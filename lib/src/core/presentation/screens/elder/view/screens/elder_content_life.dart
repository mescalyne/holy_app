import 'package:afon_app/src/core/presentation/screens/elder/elder.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElderContentLife extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ElderBloc, ElderState>(
      builder: (context, state) => CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            sliver: SliverFillRemaining(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                height: 100,
                decoration: BoxDecoration(
                  color: AfonTheme.cards,
                  boxShadow: [AfonTheme.shadows.cardBackground],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AfonDictionary.elderTabBarItemLife,
                      style: AfonTextStyle.eposHeadline2(
                          color: AfonTheme.darkBrown),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                top: 50, bottom: 50 + MediaQuery.of(context).padding.bottom),
            sliver: SliverFillRemaining(
              child: Image.asset(
                AfonImages.endPageElderLife,
                height: 105,
              ),
              hasScrollBody: false,
            ),
          ),
        ],
      ),
    );
  }
}
