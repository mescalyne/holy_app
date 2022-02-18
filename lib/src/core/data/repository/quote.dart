import 'package:afon_app/src/core/data/adapters/quote.dart';
import 'package:afon_app/src/core/data/network/services/get_quote.dart';
import 'package:afon_app/src/core/data/network/services/get_quotes_by_author_id.dart';
import 'package:afon_app/src/core/domain/entities.dart';
import 'package:injectable/injectable.dart';

abstract class QuoteRepository {
  Future<List<QuoteDto>> getQuote();

  Future<List<QuoteDto>> getQuotesByAuthorId(int authorId);
}

@Injectable(as: QuoteRepository)
class QuoteRepositoryImpl implements QuoteRepository {
  final GetQuoteService _getQuoteService;
  final GetQuotesByAuthorIdService _getQuotesService;

  QuoteRepositoryImpl(
    this._getQuotesService,
    this._getQuoteService,
  );
  @override
  Future<List<QuoteDto>> getQuote() async {
    final result = await _getQuoteService();
    return result.map((e) => e.toDomain).toList();
  }

  @override
  Future<List<QuoteDto>> getQuotesByAuthorId(int authorId) async {
    final result = await _getQuotesService(authorId);
    return result.map((e) => e.toDomain).toList();
  }
}
