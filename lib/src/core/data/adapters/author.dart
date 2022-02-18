import 'package:afon_app/src/core/data/network/client.dart';
import 'package:afon_app/src/core/data/network/models.dart';
import 'package:afon_app/src/core/domain/entities.dart';

extension AuthorAdapter on AuthorNetworkDto {
  AuthorDto get toDomain {
    return AuthorDto(
      pk: pk,
      authorName: author_name,
      biographyType: biography_type,
      portrait: '$urlApi$portrait',
      rank: rank,
      isPrayer: is_prayer,
    );
  }
}
