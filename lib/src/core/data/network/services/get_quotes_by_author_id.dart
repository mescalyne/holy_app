import 'package:afon_app/src/core/data/network/client.dart';
import 'package:afon_app/src/core/data/network/models.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:injectable/injectable.dart';

abstract class GetQuotesByAuthorIdService {
  Future<List<QuoteNetworkDto>> call(int authorId);
}

@Injectable(as: GetQuotesByAuthorIdService)
class GetQuotesByAuthorIdServiceImpl implements GetQuotesByAuthorIdService {
  final AfonApi _api;

  GetQuotesByAuthorIdServiceImpl(this._api);

  @override
  Future<List<QuoteNetworkDto>> call(int authorId) async {
    final result = await _api.client.get(
      'quote/crud',
      queryParameters: {
        'csv': false,
        'author_id': authorId,
        'page': 1,
        'limit': 1000,
      },
    );

    if (result.data is! Iterable) {
      Log.error('Response type is ${result.data.runtimeType}');
    }

    return List<QuoteNetworkDto>.from(
        result.data.map((e) => QuoteNetworkDto.fromMap(e)));
  }
}
