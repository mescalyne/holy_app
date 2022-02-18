import 'package:afon_app/src/core/data/repository/quote.dart';
import 'package:afon_app/src/core/domain/entities.dart';
import 'package:injectable/injectable.dart';

abstract class GetQuoteUseCase {
  Future<List<QuoteDto>> call();
}

@Injectable(as: GetQuoteUseCase)
class GetQuoteInteractor implements GetQuoteUseCase {
  final QuoteRepository _repository;

  GetQuoteInteractor(this._repository);

  Future<List<QuoteDto>> call() => _repository.getQuote();
}

abstract class GetQuotesByAuthorIdUseCase {
  Future<List<QuoteDto>> call(int authorId);
}

@Injectable(as: GetQuotesByAuthorIdUseCase)
class GetQuotesByAuthorIdInteractor implements GetQuotesByAuthorIdUseCase {
  final QuoteRepository _repository;

  GetQuotesByAuthorIdInteractor(this._repository);
  Future<List<QuoteDto>> call(int authorId) =>
      _repository.getQuotesByAuthorId(authorId);
}
