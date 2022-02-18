class StoriesFavouriteExample {
  final DateTime date;
  final String title;
  final String text;

  StoriesFavouriteExample({
    required this.date,
    required this.title,
    required this.text,
  });
}

class QuoteFavouriteExample {
  final DateTime date;
  final String rank;
  final String name;
  final String image;
  final String text;

  QuoteFavouriteExample({
    required this.date,
    required this.rank,
    required this.name,
    required this.text,
    required this.image,
  });
}

//Mok Data
DateTime exampleDate = DateTime.parse('2021-11-17');
String exampleRank = 'Преподобный';
String exampleName = 'Паисий Святогорец';
String exampleQuoteText =
    'Мы постоянно ропщем, а ропот превращает добро во зло. Давайте позволим Богу действовать в нас, и узнаем тайну благодарения, и будем достойно и праведно благодарить Христа. Тогда благодарность преобразит наш характер.';
String exampleStoriesTitle = 'Афонский рассказ дня (название)';
String exampleStoriesText =
    'Так в ноябре 2010 года схиархимандрит Илий назвал наш паломнический центр (придумал и написал своей рукой название компании на листе бумаге), благословив на работу. Также нашу деятельность благословил  архимандрит Ефрем, игумен Ватопедского монастыря на Афоне.';
