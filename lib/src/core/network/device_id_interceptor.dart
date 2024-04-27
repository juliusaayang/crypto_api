import 'package:dio/dio.dart';

class DeviceIdInterceptor extends Interceptor {

  DeviceIdInterceptor(this._deviceId);
  final String? _deviceId;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (_deviceId != null) {
      options.headers['Device-Id'] = _deviceId;
    }
    return handler.next(options);
  }
}
