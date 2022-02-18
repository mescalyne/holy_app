import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import 'logger.dart';

class LoggingInterceptorDio extends Interceptor {
  LoggingInterceptorDio();

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var time = DateTime.now();
    logPrint('*** API Request - Start ***');
    logPrint('${DateFormat('dd.MM.yy HH:mm:ss').format(time)}.'
        '${time.microsecond.toString().padRight(3, '0')}');
    printKV('URI', options.uri);
    printKV('METHOD', options.method);
    logPrint('HEADERS:');
    options.headers.forEach((key, v) => printKV(' - $key', v));
    logPrint('BODY:');
    printAll(options.data ?? '');

    logPrint('*** API Request - End ***');

    return handler.next(options);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    var time = DateTime.now();
    logPrint('*** Api Error - Start ***:');
    logPrint('${DateFormat('dd.MM.yy HH:mm:ss').format(time)}.'
        '${time.microsecond.toString().padRight(3, '0')}');
    logPrint('URI: ${err.requestOptions.uri}');
    if (err.response != null) {
      logPrint('STATUS CODE: ${err.response?.statusCode?.toString()}');
    }
    logPrint('$err');
    if (err.response != null) {
      printKV('REDIRECT', err.response?.realUri ?? '');
      logPrint('BODY:');
      printAll(err.response?.data.toString());
    }

    logPrint('*** Api Error - End ***:');
    return handler.next(err);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    var time = DateTime.now();
    logPrint('*** Api Response - Start ***');
    logPrint('${DateFormat('dd.MM.yy HH:mm:ss').format(time)}.'
        '${time.microsecond.toString().padRight(3, '0')}');
    printKV('URI', response.requestOptions.uri);
    printKV('STATUS CODE', response.statusCode ?? '');
    printKV('REDIRECT', response.isRedirect ?? false);
    logPrint('BODY:');
    printAll(response.data ?? '');

    logPrint('*** Api Response - End ***');

    return handler.next(response);
  }

  void printKV(String key, Object v) {
    logPrint('$key: $v');
  }

  void printAll(msg) {
    msg.toString().split('\n').forEach(logPrint);
  }

  void logPrint(String s) {
    if (!kReleaseMode) Log.dio(s);
  }
}
