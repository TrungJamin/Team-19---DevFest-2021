import 'package:devfest_2021/foundation/constants.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider((_) => AppDio.getInstance());

class AppDio with DioMixin implements Dio {
  AppDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: Constants.of().endPoint,
      contentType: "application/json",
    );

    this.options = options;

    interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      // options.headers.addAll(await userAgentClientHintsHeader());
      handler.next(options);
    }));

    if (kDebugMode) {
      // Local Log
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => AppDio._();
}
