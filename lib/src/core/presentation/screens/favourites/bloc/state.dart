import 'package:afon_app/src/core/presentation/entities/enums.dart';
import 'package:afon_app/src/resources/images.dart';

import '../favourites.dart';

class FavouritesState {
  ScreenStatus currentStatus;

  FavouritesState({
    this.currentStatus = ScreenStatus.loading,
  });

  FavouritesState copyWith({
    ScreenStatus? currentStatus,
  }) =>
      FavouritesState(
        currentStatus: currentStatus ?? this.currentStatus,
      );

  //MokData
  List<QuoteFavouriteExample> quotesExample = [
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
    QuoteFavouriteExample(
      date: exampleDate,
      rank: exampleRank,
      name: exampleName,
      text: exampleQuoteText,
      image: AfonImages.elderImageState2,
    ),
  ];
  List<StoriesFavouriteExample> storiesExample = [
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
    StoriesFavouriteExample(
      date: exampleDate,
      title: exampleStoriesTitle,
      text: exampleStoriesText,
    ),
  ];
}
