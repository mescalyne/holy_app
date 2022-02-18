import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/core/presentation/router/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/router/bloc/event.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElderContentWorkListWidget extends StatelessWidget {
  final List<LibBookDto> libBooks;

  ElderContentWorkListWidget({required this.libBooks});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => GestureDetector(
                onTap: () {
                  BlocProvider.of<RouterBloc>(context)
                      .add(RouterEvent.toBookView(
                    bookUrl: libBooks[index].bookUrl,
                    title: libBooks[index].bookName,
                  ));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                  constraints: BoxConstraints(
                    minHeight: SizeElderPageItems.worksMinHeightContainer,
                  ),
                  decoration: BoxDecoration(
                    color: AfonTheme.cards,
                    boxShadow: [AfonTheme.shadows.cardBackground],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        libBooks[index].bookName,
                        style: AfonTextStyle.asketTextNarrow(
                          color: AfonTheme.darkBrown,
                          height: 1.25,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              childCount: libBooks.length,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
              left: 25,
              right: 25,
              top: 50,
              bottom: 50 + MediaQuery.of(context).padding.bottom),
          sliver: SliverFillRemaining(
            child: Image.asset(
              AfonImages.endPageElderWorks,
              height: 90,
            ),
            hasScrollBody: false,
          ),
        ),
      ],
    );
  }
}
