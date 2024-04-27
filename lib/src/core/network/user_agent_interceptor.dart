import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

class UserAgentInterceptor extends Interceptor {
  UserAgentInterceptor(this._userAgentData);

  final UserAgentData _userAgentData;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    String? deviceId;
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final iosDeviceInfo = await deviceInfo.iosInfo;
      deviceId = iosDeviceInfo.identifierForVendor;
    } else if (Platform.isAndroid) {
      final androidDeviceInfo = await deviceInfo.androidInfo;
      deviceId = androidDeviceInfo.id;
    }
    options.headers.addAll(_userAgentData.toHeaders(deviceId));
    return handler.next(options);
  }
}

extension on UserAgentData {
  String toUserAgent() {
    return '${package.packageName}/$fullVersion ($platform $platformVersion; $model; $device; $architecture)';
  }

  Map<String, String> toHeaders(String? deviceId) {
    return {
      HttpHeaders.userAgentHeader: toUserAgent(),
      'Sec-CH-UA-Arch': architecture,
      'Sec-CH-UA-Model': model,
      'Sec-CH-UA-Platform': platform,
      'Sec-CH-UA-Platform-Version': platformVersion,
      'Sec-CH-UA': '"${package.packageName}"; v="$fullVersion"',
      'Sec-CH-UA-Full-Version': fullVersion,
      'Sec-CH-UA-Mobile': mobile ? '?1' : '?0',
      'Device-Id': deviceId ?? '',
    };
  }

  String get fullVersion => '$version-${package.buildNumber}';
}
