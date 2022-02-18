import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/core/presentation/screens/elders/bloc/bloc.dart';
import 'package:afon_app/src/core/presentation/screens/elders/bloc/event.dart';
import 'package:afon_app/src/extensions/extensions.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ElderItemCartWidget extends StatelessWidget {
  final AuthorDto author;

  ElderItemCartWidget({required this.author});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<EldersBloc>(context).add(EldersEvent.toElder(author));
      },
      child: Container(
        padding: SizeElderItemCart.padding,
        decoration: BoxDecoration(
          color: AfonTheme.cards,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SvgPicture.network(
              author.portrait,
              height: SizeElderItemCart.imageHeight,
              width: SizeElderItemCart.imageHeight,
              fit: BoxFit.contain,
            ),
            Container(
              height: SizeElderItemCart.titleHeight,
              margin: SizeElderItemCart.titleMargin,
              child: Text(
                author.authorName,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: AfonTextStyle.eposHeadline7(color: AfonTheme.darkBrown),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
