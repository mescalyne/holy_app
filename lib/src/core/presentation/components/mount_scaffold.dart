import 'package:afon_app/src/core/presentation/components/mounts_painter.dart';
import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/material.dart';

class MountScreen extends StatelessWidget {
  final Widget child;
  const MountScreen({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: SizeMountScaffold.heightAllMounts +
                  MediaQuery.of(context).padding.top -
                  20,
              color: AfonTheme.cards,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  SecondMount(),
                  FirstMount(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: AfonTheme.backgroundColor,
              ),
            )
          ],
        ),
        child,
      ],
    );
  }
}

class MountsBackgroundHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // background
      children: [
        Container(
          height: 130,
          color: AfonTheme.cards,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              SecondMount(),
              FirstMount(),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: AfonTheme.backgroundColor,
          ),
        ),
      ],
    );
  }
}
