import 'package:afon_app/src/core/data/repository/localization.dart';
import 'package:afon_app/src/core/domain/entities/localization.dart';
import 'package:injectable/injectable.dart';

/// Слой юзкейсов нужен, чтобы блок ничего не знал о слое данных (репозиториях, хранилищах),
/// а просто получал то, что ему нужно. Юзкейсы желательно "обзывать"
/// так, чтобы его название отвечало какому-то действию (get, watch, update и тд)

abstract class GetLocalizationUseCase {
  Future<List<LocalizationDto>> call();
}

@Injectable(as: GetLocalizationUseCase)
class GetLocalizationInteractor implements GetLocalizationUseCase {
  final LocalizationRepository _repository;

  GetLocalizationInteractor(this._repository);

  Future<List<LocalizationDto>> call() => _repository.getLocalizations();
}
