import 'package:afon_app/src/core/data/network/services/get_localization.dart';
import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/core/data/adapters/localization.dart';
import 'package:injectable/injectable.dart';

abstract class LocalizationRepository {
  Future<List<LocalizationDto>> getLocalizations();
}

@Injectable(as: LocalizationRepository)
class LocalizationRepositoryImpl implements LocalizationRepository {
  final GetLocalizationService _getLocalizationService;

  LocalizationRepositoryImpl(this._getLocalizationService);

  @override
  Future<List<LocalizationDto>> getLocalizations() async {
    final result = await _getLocalizationService();
    return result.map((e) => e.toDomain).toList();
  }
}
