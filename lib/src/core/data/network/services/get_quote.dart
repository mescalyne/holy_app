
import 'package:afon_app/src/core/data/network/client.dart';
import 'package:afon_app/src/core/data/network/models.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:injectable/injectable.dart';

abstract class GetQuoteService {
  Future<List<QuoteNetworkDto>> call();
}

@Injectable(as: GetQuoteService)
class GetQuoteServiceImpl implements GetQuoteService {
  final AfonApi _api;

  GetQuoteServiceImpl(this._api);

  @override
  Future<List<QuoteNetworkDto>> call() async {
    final result = await _api.client.get(
      'quote/crud',
    queryParameters: {'csv': false},
      
    );

    if (result.data is! Iterable) {
      Log.error('Response type is ${result.data.runtimeType}');
    }
    
    return List<QuoteNetworkDto>.from(
        result.data.map((e) => QuoteNetworkDto.fromMap(e)));
  }
}
