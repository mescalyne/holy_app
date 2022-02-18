// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/data/network/client.dart' as _i3;
import '../core/data/network/services/get_author.dart' as _i4;
import '../core/data/network/services/get_lib_book_by_author_id.dart' as _i5;
import '../core/data/network/services/get_localization.dart' as _i6;
import '../core/data/network/services/get_quote.dart' as _i7;
import '../core/data/network/services/get_quotes_by_author_id.dart' as _i8;
import '../core/data/repository/author.dart' as _i18;
import '../core/data/repository/lib_book.dart' as _i10;
import '../core/data/repository/localization.dart' as _i11;
import '../core/data/repository/quote.dart' as _i12;
import '../core/domain/entities.dart' as _i17;
import '../core/domain/usecases.dart' as _i20;
import '../core/domain/usecases/author.dart' as _i24;
import '../core/domain/usecases/lib_book.dart' as _i25;
import '../core/domain/usecases/localization.dart' as _i26;
import '../core/domain/usecases/quote.dart' as _i27;
import '../core/presentation/router/bloc/bloc.dart' as _i14;
import '../core/presentation/screens/elder/bloc/bloc.dart' as _i19;
import '../core/presentation/screens/elders/bloc/bloc.dart' as _i21;
import '../core/presentation/screens/favourites/bloc/bloc.dart' as _i22;
import '../core/presentation/screens/first/bloc/bloc.dart' as _i23;
import '../core/presentation/screens/home/bloc/bloc.dart' as _i9;
import '../core/presentation/screens/main/bloc/bloc.dart' as _i28;
import '../core/presentation/screens/search/bloc/bloc.dart' as _i13;
import '../core/presentation/screens/setting/bloc/bloc.dart' as _i15;
import '../core/presentation/screens/storypage/bloc/bloc.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AfonApi>(() => _i3.AfonApiImpl());
  gh.factory<_i4.GetAuthorService>(
      () => _i4.GetAuthorServiceImpl(get<_i3.AfonApi>()));
  gh.factory<_i5.GetLibBooksByAuthorIdService>(
      () => _i5.GetLibBooksByAuthorIdServiceImpl(get<_i3.AfonApi>()));
  gh.factory<_i6.GetLocalizationService>(
      () => _i6.GetLocalizationServiceImpl(get<_i3.AfonApi>()));
  gh.factory<_i7.GetQuoteService>(
      () => _i7.GetQuoteServiceImpl(get<_i3.AfonApi>()));
  gh.factory<_i8.GetQuotesByAuthorIdService>(
      () => _i8.GetQuotesByAuthorIdServiceImpl(get<_i3.AfonApi>()));
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc());
  gh.factory<_i10.LibBookRepository>(() =>
      _i10.LibBookRepositoryImpl(get<_i5.GetLibBooksByAuthorIdService>()));
  gh.factory<_i11.LocalizationRepository>(
      () => _i11.LocalizationRepositoryImpl(get<_i6.GetLocalizationService>()));
  gh.factory<_i12.QuoteRepository>(() => _i12.QuoteRepositoryImpl(
      get<_i8.GetQuotesByAuthorIdService>(), get<_i7.GetQuoteService>()));
  gh.factory<_i13.SearchBloc>(
      () => _i13.SearchBloc(get<_i14.RouterEventSink>()));
  gh.factory<_i15.SettingBloc>(
      () => _i15.SettingBloc(get<_i14.RouterEventSink>()));
  gh.factoryParam<_i16.StorypageBloc, _i17.QuoteDto?, dynamic>(
      (quote, _) => _i16.StorypageBloc(quote));
  gh.factory<_i18.AuthorRepository>(
      () => _i18.AuthorRepositoryImpl(get<_i4.GetAuthorService>()));
  gh.factoryParam<_i19.ElderBloc, _i17.AuthorDto?, dynamic>(
      (currentAuthor, _) => _i19.ElderBloc(
          currentAuthor,
          get<_i14.RouterEventSink>(),
          get<_i20.GetQuotesByAuthorIdUseCase>(),
          get<_i20.GetLibBooksByAuthorIdUseCase>()));
  gh.factory<_i21.EldersBloc>(() => _i21.EldersBloc(
      get<_i14.RouterEventSink>(), get<_i20.GetAuthorUseCase>()));
  gh.factory<_i22.FavouritesBloc>(
      () => _i22.FavouritesBloc(get<_i14.RouterEventSink>()));
  gh.factory<_i23.FirstBloc>(() => _i23.FirstBloc(
      get<_i14.RouterEventSink>(), get<_i20.GetLocalizationUseCase>()));
  gh.factory<_i24.GetAuthorUseCase>(
      () => _i24.GetAuthorInteractor(get<_i18.AuthorRepository>()));
  gh.factory<_i25.GetLibBooksByAuthorIdUseCase>(
      () => _i25.GetLibBooksInteractor(get<_i10.LibBookRepository>()));
  gh.factory<_i26.GetLocalizationUseCase>(
      () => _i26.GetLocalizationInteractor(get<_i11.LocalizationRepository>()));
  gh.factory<_i27.GetQuoteUseCase>(
      () => _i27.GetQuoteInteractor(get<_i12.QuoteRepository>()));
  gh.factory<_i27.GetQuotesByAuthorIdUseCase>(
      () => _i27.GetQuotesByAuthorIdInteractor(get<_i12.QuoteRepository>()));
  gh.factory<_i28.MainBloc>(() =>
      _i28.MainBloc(get<_i14.RouterEventSink>(), get<_i27.GetQuoteUseCase>()));
  gh.singleton<_i14.RouterEventSink>(_i14.RouterBloc());
  return get;
}
