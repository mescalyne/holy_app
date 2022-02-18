import 'package:afon_app/src/core/data/network/models.dart';
import 'package:afon_app/src/core/domain/entities.dart';

extension LocalizationAdapter on LocalizationNetworkDto {
  LocalizationDto get toDomain {
    return LocalizationDto(
      bg: bg,
      ro: ro,
      en: en,
      uk: uk,
      sr: sr,
      ka: ka,
      ru: ru,
      el: el,
    );
  }
}
