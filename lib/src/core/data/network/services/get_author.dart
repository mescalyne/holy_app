import 'package:afon_app/src/core/data/network/client.dart';
import 'package:afon_app/src/core/data/network/models.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:injectable/injectable.dart';

abstract class GetAuthorService {
  Future<List<AuthorNetworkDto>> call();
}

@Injectable(as: GetAuthorService)
class GetAuthorServiceImpl implements GetAuthorService {
  final AfonApi _api;

  GetAuthorServiceImpl(this._api);

  @override
  Future<List<AuthorNetworkDto>> call() async {
    final result = await _api.client.get(
      'author/crud',
      queryParameters: {'csv': false},
    );

    if (result.data is! Iterable) {
      Log.error('Response type is ${result.data.runtimeType}');
    }

    return List<AuthorNetworkDto>.from(
        result.data.map((e) => AuthorNetworkDto.fromMap(e)));
  }
}
