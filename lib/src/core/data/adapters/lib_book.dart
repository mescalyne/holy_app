import 'package:afon_app/src/core/data/network/client.dart';
import 'package:afon_app/src/core/data/network/models.dart';
import 'package:afon_app/src/core/domain/entities.dart';

extension LibBookAdapter on LibBookNetworkDto {
  LibBookDto get toDomain {
    return LibBookDto(
      pk: pk,
      authorId: author_id,
      partition: partition,
      bookName: book_name,
      authorName: author_name,
      bookUrl: '$urlApi$book_url',
    );
  }
}
