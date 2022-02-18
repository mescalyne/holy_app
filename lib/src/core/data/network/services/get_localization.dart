import 'package:afon_app/src/core/data/network/client.dart';
import 'package:afon_app/src/core/data/network/models/localization.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:injectable/injectable.dart';

abstract class GetLocalizationService {
  Future<List<LocalizationNetworkDto>> call();
}

@Injectable(as: GetLocalizationService)
class GetLocalizationServiceImpl implements GetLocalizationService {
  final AfonApi _api;

  GetLocalizationServiceImpl(this._api);

  @override
  Future<List<LocalizationNetworkDto>> call() async {
    final result = await _api.client.get('localization/crud');

    if (result.data is! Iterable) {
      // TODO: обработка на случай, если ответ не совпал с ожидаемым
      Log.error('Response type is ${result.data.runtimeType}');
    }

    return List<LocalizationNetworkDto>.from(
        result.data.map((e) => LocalizationNetworkDto.fromMap(e)));
  }
}
