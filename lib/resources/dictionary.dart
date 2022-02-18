class AfonDictionary {
  //Bottom Navigation Menu
  static const bottomNavigationMenuMain = 'Главня';
  static const bottomNavigationMenuElders = 'Старцы';
  static const bottomNavigationMenuSearch = 'Поиск';
  static const bottomNavigationMenuFavourites = 'Избранное';
  static const bottomNavigationMenuSetting = 'Настройки';
  static const reverend = 'Преподобный';

  //EldersPage
  static const eldersPageTitle = 'Старцы';

  //Elder page
  static const elderTabBarItemQuotes = 'Цитаты';
  static const elderTabBarItemWorks = 'Труды';
  static const elderTabBarItemLife = 'Житие';
  static const elderTabBarItemPrayer = 'Молитва';
  static String elderWorksContentSizeDate(String sizeMb, String date) =>
      '$sizeMb МБ / $date';

  //BookView page
  static const bookViewErrorMessage = 'Не удалось загрузить страницу.\n'
      'Проверьте подключение к интернету и повторите еще раз.';
  static const bookViewErrorButton = 'Обновить';

  //Setting page
  static const settingPageTitle = 'Настройки';
  static const settingItemNotify = 'Уведомления';
  static const settingItemLanguage = 'Язык приложения';
  static const settingItemVisual = 'Версия для слабовидящих';
  static const settingItemAbout = 'О проекте';
  static const settingNotifyOn = 'Вкл';
  static const settingNotifyOff = 'Выкл';

  //FirstPage
  static const firstPageTitle = 'Благословенный Афон';
  static const firstPageItemTitleState = 'Мудрость святой горы';
  static const firstPageItemDescriptionState =
      'Ежедневные публикации цитат и рассказов';
  static const firstPageItemButtonState = '4095 цитат и 50 рассказов';
  static const firstPageItemTitleName = 'Этимология имен';
  static const firstPageItemTitleShop = 'Магазин Афонских икон';
  static const firstPageItemTitleNews = 'Новости Святой Горы';
  static const firstPageItemTitlePiligrim = 'Паломничество на Афон';
  static const firstPageItemDescriptionName = 'Подача на поминование';
  static const firstPageItemDescriptionShop = 'Быстрая доставка';
  static const firstPageItemDescriptionNews = 'Статьи, фото и видео';
  static const firstPageItemDescriptionPiligrim =
      'Подробная информация и бронь';
  static const firstPageSectionInWork = 'Раздел в работе';
  static const firstPageText =
      'Мы постоянно ропщем, а ропот превращает добро во зло. Давайте позволим Богу действовать в нас, и узнаем...';

  static const storyPageQuote = 'Цитата';
  static const storyPageStory = 'Рассказ';
  //STATE
  static const elderTitle1 = 'Паисий Святогорец';
  static const elderTitle2 = 'Силуан Афонский';
  static const date1 = '17 августа 2021';
  static const tag1 = '#благодарность';
  static const qouteCount = '274 ЦИТАТЫ';
  static const textQoute =
      'Мы постоянно ропщем, а ропот превращает добро во зло. Давайте позволим Богу действовать в нас, и узнаем...';
  static const textStory =
      'Мы постоянно ропщем, а ропот превращает добро во зло. Давайте позволим Богу действовать в нас, и узнаем. Мы постоянно ропщем, а ропот превращает добро во зло. Давайте позволим Богу действовать в нас, и узнаем. Мы постоянно ропщем, а ропот превращает добро во зло. Давайте позволим Богу действовать в нас, и узнаем.';
  static const elderType = 'Преподобный';
  //SearchPage
  static const searchPageTitle = 'Поиск цитат по темам';
  static const searchPageInfo =
      'В нашей базе с 2010 года собрано 9999 цитат от 99 Афонских отцов на 999 темы. Для удобства пользования сервисом мы присвоили каждой цитате свою тему.';
  static const searchPageChoosing = 'Выберите тему';
  static const searchPageResult = '';
  //Favourites page
  static const favouritesPageTitle = 'Избранное';
  static const favouritesTabBarItemQuotes = 'Цитаты';
  static const favouritesTabBarItemStories = 'Рассказы';

  //Signature
  static SignatureStrings signQuotes = SignatureStrings(
    oneSign: 'цитата',
    twoSign: 'цитаты',
    fiveSign: 'цитат',
  );

  static const localeString = 'ru-RU';
}

class SignatureStrings {
  final String oneSign;
  final String twoSign;
  final String fiveSign;

  SignatureStrings({
    required this.oneSign,
    required this.twoSign,
    required this.fiveSign,
  });
}
