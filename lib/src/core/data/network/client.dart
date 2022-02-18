import 'package:afon_app/src/utils/logger.dart';
import 'package:afon_app/src/utils/logger_dio.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const urlApi = 'https://application.afon.su';
const _baseUrl = '$urlApi/api/v1/';

abstract class AfonApi {
  late final Dio client;

  AfonApi(this.client);
}

@LazySingleton(as: AfonApi)
class AfonApiImpl implements AfonApi {
  @override
  late final Dio client;

  AfonApiImpl() {
    client = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
      ),
    );

    client.interceptors
      ..add(LoggingInterceptorDio())
      ..add(AuthInterceptor())
      ..add(LocalizationInterceptor())
      ..add(ErrorHandleInterceptor());
  }
}

/// Примитивный пример внедрения авторизации
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // options.headers.addAll({
    //   'Authentication': 'SomeAuthToken',
    // });
    handler.next(options);
  }
}

class LocalizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'Accept-Language': // подставить сюда локаль из стораджа (то, что будет выбрано в настройках приложения)
          'ru',
    });
    handler.next(options);
  }
}

class ErrorHandleInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    Log.error(err.toString());
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode != 200) {
      Log.error('Error code: ${response.statusCode}');
    }

    handler.next(response);
  }
}
