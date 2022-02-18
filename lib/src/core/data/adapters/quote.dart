import 'package:afon_app/src/core/data/network/models.dart';
import 'package:afon_app/src/core/domain/entities.dart';
import 'package:afon_app/src/extensions/extensions.dart';

extension QuoteAdapter on QuoteNetworkDto {
  QuoteDto get toDomain {
    return QuoteDto(
      authorName: author_name,
      authorId: author_id,
      quoteText: quote_text,
      date: pk.dateToDateTime,
      tags: tags,
    );
  }
}
