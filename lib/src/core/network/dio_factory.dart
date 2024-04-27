import 'package:crypto_api/src/core/network/device_id_interceptor.dart';
import 'package:crypto_api/src/core/network/dio_extension.dart';
import 'package:crypto_api/src/core/network/user_agent_interceptor.dart';
import 'package:crypto_api/src/flavor/flavor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

class DioFactory {
  const DioFactory({
    required this.baseUrl,
    this.isFirebasePerformanceEnabled = false,
    this.connectTimeout = const Duration(seconds: 30),
  });

  static late UserAgentData userAgentData;
  static String? deviceId;

  final String baseUrl;
  final bool isFirebasePerformanceEnabled;
  final Duration connectTimeout;

  DioFactory copyWith({
    String? baseUrl,
    bool? isFirebasePerformanceEnabled,
    Duration? connectTimeout,
  }) {
    return DioFactory(
      baseUrl: baseUrl ?? this.baseUrl,
      isFirebasePerformanceEnabled: isFirebasePerformanceEnabled ?? this.isFirebasePerformanceEnabled,
      connectTimeout: connectTimeout ?? this.connectTimeout,
    );
  }

  Dio unauthenticated() {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: Duration(milliseconds: connectTimeout.inMilliseconds),
        //contentType: 'application/json',
      ),
    )..transformer = BackgroundTransformer();
    dio.interceptors.addAll(_headInterceptors());
    dio.interceptors.addAll(_tailInterceptors());
    return dio;
  }

  Dio authenticated() {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: Duration(milliseconds: connectTimeout.inMilliseconds),
        contentType: 'application/json',
      ),
    )..transformer = BackgroundTransformer();
    dio.interceptors.addAll([
      ..._headInterceptors(),
    ]);
    final retryDio = dio.copyWith();
    dio.interceptors.addAll(_tailInterceptors());
    retryDio.interceptors.addAll(_tailInterceptors());
    return dio;
  }

  List<Interceptor> _headInterceptors() {
    return [
      UserAgentInterceptor(userAgentData),
      DeviceIdInterceptor(deviceId),
    ];
  }

  List<Interceptor> _tailInterceptors() {
    return [
      PrettyDioLogger(
        requestHeader: !FlavorConfig.instance.isProduction,
        requestBody: !FlavorConfig.instance.isProduction,
        responseBody: !FlavorConfig.instance.isProduction,
        maxWidth: 180,
        logPrint: (it) => debugPrint(it.toString()),
      ),
    ];
  }
}
