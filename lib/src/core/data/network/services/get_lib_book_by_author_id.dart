import 'package:afon_app/src/core/data/network/client.dart';
import 'package:afon_app/src/core/data/network/models.dart';
import 'package:afon_app/src/utils/logger.dart';
import 'package:injectable/injectable.dart';

abstract class GetLibBooksByAuthorIdService {
  Future<List<LibBookNetworkDto>> call(int authorId);
}

@Injectable(as: GetLibBooksByAuthorIdService)
class GetLibBooksByAuthorIdServiceImpl implements GetLibBooksByAuthorIdService {
  final AfonApi _api;

  GetLibBooksByAuthorIdServiceImpl(this._api);

  @override
  Future<List<LibBookNetworkDto>> call(int authorId) async {
    final result = await _api.client.get(
      'lib/book/$authorId',
      queryParameters: {
        'csv': false,
      },
    );

    if (result.data is! Iterable) {
      Log.error('Response type is ${result.data.runtimeType}');
    }

    return List<LibBookNetworkDto>.from(
        result.data.map((e) => LibBookNetworkDto.fromMap(e)));
  }
}
